import 'package:breast_onco/screens/tabs_screen.dart';
import 'package:breast_onco/themes/cubit/theme_cubit.dart';
import 'package:breast_onco/themes/theme_style.dart';
import 'package:flutter/material.dart';
import 'package:breast_onco/routes/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Breast Onco',
      theme: ThemeStyle.lightTheme,
      initialRoute: TabsScreen.routeName,
      routes: PageRoutes().routes(),
    );
  }
}
