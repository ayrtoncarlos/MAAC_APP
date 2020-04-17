import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        /*Image.asset(
          "images/museu.jpg",
          fit: BoxFit.cover,
          height: 500.0,
        ),*/
        Scaffold(
          body: SingleChildScrollView(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                        top: 30.0, bottom: 70.0, left: 30.0, right: 30.0),
                    child: Icon(
                      Icons.toys,
                      size: 100.0,
                    ),
                  ),
                  buildTextField("Usuário"),
                  buildTextField("Senha"),
                  buildButtonCreate("ENTRAR"),
                  Container(
                    child: FlatButton(
                      child: Text(
                        "Não possui uma conta?",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                RegistrationScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 50.0),
                          child: ImageIcon(
                            AssetImage("images/unifacisa_logo.png"),
                            size: 50.0,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 150.0, right: 50.0),
                          child: ImageIcon(
                            AssetImage("images/lti_logo.png"),
                            size: 40.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: Colors.amber,
        ),
      ],
    );
  }
}

class InitScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 100.0, bottom: 10.0, left: 0.0, right: 30.0),
            child: Image.asset(
              "images/initPage.png",
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 70.0),
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 60.0),
                  child: ImageIcon(
                    AssetImage("images/unifacisa_logo.png"),
                    size: 50.0,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 150.0, right: 50.0),
                  child: ImageIcon(
                    AssetImage("images/lti_logo.png"),
                    size: 40.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.amber,
    );
  }
}

class RegistrationScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          body: SingleChildScrollView(
            padding: EdgeInsets.only(
                top: 80.0, bottom: 20.0, left: 10.0, right: 10.0),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildTextField("Nome"),
                  buildTextField("Telefone"),
                  buildTextField("CEP"),
                  buildTextField("Endereço (Rua e Número)"),
                  buildTextField("Bairro"),
                  buildTextField("Complemento"),
                  buildTextField("Usuário"),
                  buildButtonCreate("CADASTRAR"),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                    child: Container(
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "JÁ POSSUI UMA CONTA?",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 20.0),
                        ),
                        color: Colors.amber,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          side: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: Colors.amber,
        ),
      ],
    );
  }
}

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack();
  }
}

Widget buildButtonCreate(String label) {
  return Padding(
    padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
    child: Container(
      height: 50.0,
      child: RaisedButton(
        onPressed: () {},
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        color: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    ),
  );
}

Widget buildTextField(String label) {
  return Container(
    padding: EdgeInsets.only(bottom: 15.0),
    child: TextField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.black),
        border: OutlineInputBorder(),
      ),
      style: TextStyle(
        color: Colors.black,
        fontSize: 20.0,
      ),
    ),
  );
}
