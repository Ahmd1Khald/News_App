import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../bloc/app_cubits.dart';
import '../bloc/app_states.dart';
import '../shared/components.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        List list = AppCubit.get(context).business;
        if (state is AppGetBusinessLoadingState) {
          return SpinKitWave(
            itemBuilder: (BuildContext context, int index) {
              return DecoratedBox(
                decoration: BoxDecoration(
                  color: index.isEven ? Colors.blue : Colors.amber,
                ),
              );
            },
          );
        } else if (state is AppGetBusinessErrorState) {
          return Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error,
                    color: Colors.red,
                    size: 32,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.08,
                  ),
                  Text(
                    "Check your internet and try latter",
                    style: Theme.of(context).textTheme.titleLarge,
                  )
                ],
              ),
            ),
          );
        }
        return ListView.separated(
          itemBuilder: (context, index) => ItemBuilder(list: list[index]),
          separatorBuilder: (context, index) => Container(),
          itemCount: list.length,
          physics: const BouncingScrollPhysics(),
        );
      },
    );
  }
}
