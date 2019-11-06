import 'package:flutter/material.dart';
import 'package:flutter_your_pet/ui/calendar.dart';
import 'package:flutter_your_pet/ui/meuspets.dart';
import 'package:flutter_your_pet/ui/login.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Your Pet"),
          backgroundColor: Colors.deepOrange,
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Icon(Icons.person, size: 35),
                        ),
                        Padding(
                          padding: EdgeInsets.all(0.0),
                          child: Text(" Nome", style: TextStyle(fontSize: 25)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 15.0, left: 15.0),
                          child: Text("Email@gmail.com")
                        ),
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              ListTile(
                title: Text("Agenda"),
                leading: Icon(Icons.calendar_today, color: Colors.blue),
                onTap: () {
                  _calendar();
                },
              ),
              ListTile(
                title: Text("Meus PETs"),
                leading: Icon(Icons.favorite, color: Colors.red),
                onTap: () {
                  _meusPets();
                },
              ),
              ListTile(
                title: Text("Meus serviços"),
                leading: Icon(Icons.archive, color: Colors.orange),
                onTap: () {},
              ),
              ListTile(
                title: Text("Minha Galeria"),
                leading: Icon(Icons.image, color: Colors.green),
                onTap: () {},
              ),
              ListTile(
                title: Text("Promoções Especiais"),
                leading: Icon(Icons.star, color: Colors.yellow),
                onTap: () {},
              ),
              ListTile(
                title: Text("Log out"),
                leading: Icon(Icons.exit_to_app, color: Colors.black),
                onTap: () {
                  _logOut();
                },
              ),
            ],
          ),
        ));
  }

  void _calendar() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CalendarPage()));
  }

  void _meusPets() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MeuspetsPage()));
  }

  void _logOut() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }
}
