// StatelessWidget
import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';
import 'package:hello_world/home_page.dart';
//import 'package:hello_world/home_page.dart';
import 'package:hello_world/login_page.dart';

class AppWidget extends StatelessWidget {

  //final String title; // Variavel

  //const AppWidget({super.key, required this.title}); // construtor

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (builder, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
            //brightness: AppController.instance.isDarkTheme ? Brightness.dark: Brightness.light,
            brightness:  Brightness.dark
          ),
          initialRoute: "/",
          routes: {
            "/": (context) => LoginPage(),
            "/home": (context) => HomePage()
          },
          //home: HomePage(),
          //home: LoginPage(),
        );
      }, 
    );
  }
}