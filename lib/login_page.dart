import 'package:flutter/material.dart';
//import 'package:hello_world/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";

  Widget _body() {
    return SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  width: 200,
                  height: 200,
                  //child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/BMW_logo_%28gray%29.svg/600px-BMW_logo_%28gray%29.svg.png"),
                  child: Image.asset('assets/images/logo-bmw.png')
                ),
                Container(height: 40),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12, 
                                                   right: 12,
                                                   top: 20,
                                                   bottom: 12),
                    child: Column(
                      children: [
                          TextField(
                            onChanged: (text) {
                              email = text;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: "Email",
                              border: OutlineInputBorder()
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            onChanged: (text) {
                              password = text;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "Password",
                              border: OutlineInputBorder()
                            ),
                          ),
                          SizedBox(height: 15),
                          ElevatedButton(
                              onPressed: () {
                                if (email == "gustavo@alfredo.com" && password == "admin") {
                                  //print("Correto");
                                  //Navigator.of(context).push(
                                  //  MaterialPageRoute(builder: (context) => HomePage()) // navegacao manual - com sobreposicao (retorno)
                                  //);
                                  //Navigator.of(context).pushReplacement(
                                  //  MaterialPageRoute(builder: (context) => HomePage()) // navegacao manual - sem sobreposicao (retorno)
                                  //);

                                  //Navigator.of(context).pushNamed("/home"); // navegacao nomeadas - com sobreposicao (retorno) 
                                  Navigator.of(context).pushReplacementNamed("/home"); // navegacao nomeadas - sem sobreposicao (retorno)
                                } else {
                                  print("Login Invalido");
                                }
                              },
                              // formatacao do botao
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue, // Cor de fundo
                                foregroundColor: Colors.white, // Cor do texto
                                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12), // opcional
                                shape: RoundedRectangleBorder( // opcional: borda arredondada
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),

                              child: Container(
                                width: double.infinity,
                                child: Text("Entrar", textAlign: TextAlign.center)
                              ),
                              
                          )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: _body(),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/images/background.jpg', 
                               fit: BoxFit.cover)),// forca a imagem a preecher a tela
          Container(color: Colors.black.withOpacity(0.3)
          ),
          _body(),
        ],
      ),
    );
  }
}