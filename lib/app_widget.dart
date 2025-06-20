// StatelessWidget
import 'package:flutter/material.dart';
import 'package:hello_world/home_page.dart';

class AppWidget extends StatelessWidget {

  //final String title; // Variavel

  //const AppWidget({super.key, required this.title}); // construtor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: HomePage(),
    );
  }

  //@override
  //Widget build(BuildContext context) {
  //  return MaterialApp(
  //    theme: ThemeData.light(),
  //    home: Container(
  //      child: Center(child: Text('Audi Quattro')),
  //    ),
  //  );
  //}

  //@override
  //Widget build(BuildContext context) {
  //  return Container(
  //    child: Center(
  //      child: Text(
  //        title,
  //        textDirection: TextDirection.ltr,
  //        style: TextStyle(color: const Color.fromARGB(255, 26, 1, 252),
  //                        fontSize: 50.0),
  //        ),
  //      ),
  //  );
  //}
}