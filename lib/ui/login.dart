import 'package:flutter/material.dart';
import 'package:flutter_your_pet/ui/register.dart';
import 'package:flutter_your_pet/ui/home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Pet"),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(50.0),
        child: Form(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 50.0, left: 50.0, bottom: 15.0),
              child:  Image.asset("lib/images/pet_logo.png",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                        focusedBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(45),
                          borderSide: BorderSide(color: Colors.deepOrange),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(45),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        labelText: "Email ",
                        labelStyle: TextStyle(color: Colors.black)
                    ),
                    style: TextStyle( fontSize: 20.0),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0, bottom: 30.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                        focusedBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(45),
                          borderSide: BorderSide(color: Colors.deepOrange),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(45),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        labelText: "Senha ",
                        labelStyle: TextStyle(color: Colors.black)
                    ),
                    style: TextStyle( fontSize: 20.0),
                  ),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 10.0, left: 10.0, top: 10.0),
                  child: Container(
                    height: 50.0,
                    child: RaisedButton(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      elevation: 10.0,
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) =>
                                HomePage(
                                )));
                      },
                      color: Colors.deepOrange,
                      child: Text("Entrar",style: TextStyle(color: Colors.white,fontSize: 20.0),),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.0, left: 10.0, top: 10.0),
                  child: Container(
                    height: 50.0,
                    child: RaisedButton(
                      elevation: 10.0,
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) =>
                                RegisterPage(
                                )));
                      },
                      color: Colors.deepOrange,
                      child: Text("Cadastrar",style: TextStyle(color: Colors.white,fontSize: 20.0),),
                    ),
                  ),
                ),
              ],
            ),

          ],
        )),
      ),
    );
  }
}
