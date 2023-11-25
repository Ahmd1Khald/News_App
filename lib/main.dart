import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'bloc/app_cubits.dart';
import 'bloc/app_states.dart';
import 'bloc/bloc_observer.dart';
import 'const/themes/theme_data.dart';
import 'const/themes/theme_provider.dart';
import 'layout_screen.dart';
import 'network/local/cach_helper.dart';
import 'network/non_local/dio_helper.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CacheHelper.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit()..getBusinessData(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(
                create: (_) => ThemeProvider(),
              ),
            ],
            child: Consumer<ThemeProvider>(builder: (
              context,
              themeProvider,
              child,
            ) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                home: const LayoutScreen(),
                theme: Themes.themeData(
                  isDarkTheme: themeProvider.getIsDarkTheme,
                  context: context,
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
