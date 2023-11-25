import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/screens/search_screen.dart';
import 'package:news_app/shared/components.dart';
import 'package:provider/provider.dart';

import 'bloc/app_cubits.dart';
import 'bloc/app_states.dart';
import 'const/themes/theme_provider.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit cubit = AppCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                Text(
                  'News App',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                    onPressed: () {
                      navigateTo(context, SearchScreen());
                    },
                    icon: const Icon(Icons.search_rounded)),
                const SizedBox(
                  width: 20,
                ),
                const Icon(
                  Icons.light_mode,
                  size: 18,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: SwitchListTile(
                    //secondary: const Icon(Icons.brightness_4),
                    // title: Text(
                    //   themeProvider.getIsDarkTheme ? "Dark mode" : "Light mode",
                    //   style: TextStyle(color: Colors.grey),
                    // ),
                    value: themeProvider.getIsDarkTheme,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      themeProvider.setDarkTheme(themeValue: value);
                    },
                  ),
                ),
                const Icon(
                  Icons.dark_mode,
                  size: 18,
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Business',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.sports),
                label: 'Sports',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.science),
                label: 'Science',
              ),
            ],
            onTap: (index) {
              cubit.changeBottomIndex(index: index);
            },
            currentIndex: cubit.bottomIndex,
          ),
          body: cubit.screens[cubit.bottomIndex],
        );
      },
    );
  }
}
