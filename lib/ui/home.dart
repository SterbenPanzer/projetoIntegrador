import 'package:flutter/material.dart';
import 'package:flutter_your_pet/ui/calendar.dart';
import 'package:flutter_your_pet/ui/meuspets.dart';

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
          child: Text(
            "Home",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          decoration: BoxDecoration(
            color: Colors.black,
          ),
        ),
        ListTile(
          title: Text("Agenda"),
          onTap: () {
            _calendar();
          },
        ),
        ListTile(
          title: Text("Meus serviços"),
          onTap: () {},
        ),
              ListTile(
                title: Text("Promoções Ativas"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Meus PETs"),
                onTap: () {
                  _meusPets();
                },
              ),
        ListTile(
        title: Text("Fechar"),
    onTap: (){
          Navigator.pop(context);
    },
    ),
    ],
    ),
    ));
    }

  void _calendar(){
    Navigator.push(context, MaterialPageRoute(
        builder: (context) =>
            CalendarPage(
            )));
  }

  void _meusPets(){
    Navigator.push(context, MaterialPageRoute(
        builder: (context) =>
            MeuspetsPage(
            )));
  }

}




