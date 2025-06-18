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

// StatefulWidget
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>{
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(child: GestureDetector(child: Text('Contador: $counter'),
        onTap: () {
          setState(() { // settar estado
            counter++;
          });  
        },
        )),
    );
  }

}