import 'package:flutter/material.dart';

class RegistrarpetsPage extends StatefulWidget {
  @override
  _RegistrarpetsPageState createState() => _RegistrarpetsPageState();
}

class _RegistrarpetsPageState extends State<RegistrarpetsPage> {
  String dropdownValue = 'Cachorro';
  String dropdownValue2 = 'Macho';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
          )
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45),
                              borderSide: BorderSide(color: Colors.deepOrange),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            labelText: "Qual é o nome do seu animalzinho?",
                            labelStyle: TextStyle(color: Colors.black)),
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
                Row(
              mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Que animal você tem? ",style: TextStyle(fontSize: 16)),
                    Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          children: <Widget>[
                            DropdownButton<String>(
                              value: dropdownValue,
                              elevation: 16,
                              style: TextStyle(
                                color: Colors.deepOrange,fontSize: 18,
                              ),
                              underline: Container(
                                height: 3,
                                width: 20,
                                color: Colors.black,
                              ),
                              onChanged: (String newValue) {
                                setState(() {
                                  dropdownValue = newValue;
                                });
                              },
                              items: <String>['Cachorro', 'Gato'].map<DropdownMenuItem<String>>((String value){
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        )
                    ),
                  ],
            ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Qual é o sexo? ",style: TextStyle(fontSize: 16)),
                    Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          children: <Widget>[
                            DropdownButton<String>(
                              value: dropdownValue2,
                              elevation: 16,
                              style: TextStyle(
                                color: Colors.deepOrange,fontSize: 18,
                              ),
                              underline: Container(
                                height: 3,
                                width: 20,
                                color: Colors.black,
                              ),
                              onChanged: (String newValue) {
                                setState(() {
                                  dropdownValue2 = newValue;
                                });
                              },
                              items: <String>['Macho', 'Femêa'].map<DropdownMenuItem<String>>((String value){
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        )
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45),
                              borderSide: BorderSide(color: Colors.deepOrange),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            labelText: "Qual é a raça dele?",
                            labelStyle: TextStyle(color: Colors.black)),
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45),
                              borderSide: BorderSide(color: Colors.deepOrange),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            labelText: "Qual é a idade dele?",
                            labelStyle: TextStyle(color: Colors.black)),
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 10.0, left: 10.0, top: 20.0),
                      child: Container(
                        height: 50.0,
                        child: RaisedButton(
                          padding: EdgeInsets.symmetric(horizontal: 30.0),
                          elevation: 10.0,
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          color: Colors.deepOrange,
                          child: Text(
                            "Cadastrar",
                            style: TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
        ),
      ),
    );
  }
}
