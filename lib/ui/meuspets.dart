import 'package:flutter/material.dart';
import 'package:flutter_your_pet/ui/registrarpets.dart';

class MeuspetsPage extends StatefulWidget {
  @override
  _MeuspetsPageState createState() => _MeuspetsPageState();
}

class _MeuspetsPageState extends State<MeuspetsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meus PETs"),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        actions: <Widget>[
         FloatingActionButton(
           onPressed: (){
             _registrarPet();
           },
           child: Icon(Icons.add),
           backgroundColor: Colors.deepOrange,
           elevation: 20,
           highlightElevation:30,
           foregroundColor: Colors.white,
         )
        ],
      ),
  body: SingleChildScrollView(
    padding: EdgeInsets.all(40.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Image.asset("lib/images/mensagem_tutorial.png"),
        )
      ],
      
    ),
  ),
    );
  }
  void _registrarPet(){
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => RegistrarpetsPage(
        )));
  }
}


