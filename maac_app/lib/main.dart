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
        Image.asset(
          "images/museu.jpg",
          fit: BoxFit.cover,
          height: 500.0,
        ),
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
                  Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                    child: Container(
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          "ENTRAR",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 25.0),
                        ),
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: FlatButton(
                      child: Text(
                        "Não possui uma conta?",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Row(
                      children: <Widget>[
                        ImageIcon(
                          AssetImage("images/unifacisa_logo.png"),
                          size: 50.0,
                        ),
                        ImageIcon(
                          AssetImage("images/lti_logo.png"),
                          size: 40.0,
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
