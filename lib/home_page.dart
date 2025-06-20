// StatefulWidget
import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Center(child: GestureDetector(child: Text('Contador: $counter', style: TextStyle(fontSize: 50),),
        onTap: () {
          setState(() { // settar estado
            counter++;
          });  
        },
        )),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() { // settar estado
            counter++;
          });
        }
      ),
    );
  }

}