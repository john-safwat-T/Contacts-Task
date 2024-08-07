
import 'package:contacts_task/Core/Theme/theme.dart';
import 'package:contacts_task/UI/Home/home_screen.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(const MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName : (_) => HomeScreen(),
      },
      initialRoute: HomeScreen.routeName,
      theme: ContactAppTheme.lightTheme,
    );
  }
}