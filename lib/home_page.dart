// StatefulWidget
import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';

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
      drawer: Drawer( // menu lateral
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(40),
                child: Image.network("https://www.signaturefineart.com/cdn/shop/files/Homer-Simpson-Patrice-Murciano-47299831.jpg?v=1743369512&width=1445"),
              ), 
              accountName: Text("Gustavo Alfredo"),
              accountEmail: Text("gustavo@alfredo.com")),
            ListTile(
              leading: Icon(Icons.home), // icone home
              title: Text("Home"),
              subtitle: Text("start screen"),
              onTap: (){
                print("Home");
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app), // icone home
              title: Text("Logout"),
              subtitle: Text("logout screen"),
              onTap: (){
                Navigator.of(context).pushReplacementNamed("/");
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          CustomSwitch()
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
        //child: ListView(
          //scrollDirection: Axis.horizontal, // DIRECAO DO SCROLL
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Contador: $counter"),
            Container(height: 10),
            CustomSwitch(),
            Container(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                )
              ],
            )
          ],
        ),
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

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDarkTheme, 
        onChanged: (value) {
          AppController.instance.changeTheme();
        }, );
  }
}