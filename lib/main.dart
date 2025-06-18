//import 'dart:ui';
import 'package:flutter/material.dart';

// Estados - Local e Global
// StatelessWidget
main(){
  runApp(AppWidget(
    title:"Audi Quattro"
    ));
}
// StatelessWidget
class AppWidget extends StatelessWidget {

  final String title; // Variavel

  const AppWidget({super.key, required this.title}); // construtor

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          title,
          textDirection: TextDirection.ltr,
          style: TextStyle(color: const Color.fromARGB(255, 26, 1, 252),
                          fontSize: 50.0),
          ),
        ),
    );
  }

}