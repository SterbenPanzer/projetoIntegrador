import 'package:flutter/material.dart';
import 'package:flutter_your_pet/ui/registrarpets.dart';

class MeuspetsPage extends StatefulWidget {
  @override
  _MeuspetsPageState createState() => _MeuspetsPageState();
}

class _MeuspetsPageState extends State<MeuspetsPage> {

@override
void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meus PETs"),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        actions: <Widget>[
          FloatingActionButton(
            onPressed: () {
              _registrarPet();
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.deepOrange,
            elevation: 20,
            highlightElevation: 30,
            foregroundColor: Colors.white,
          )
        ],
      ),
      body:
            ListView.builder(
              padding: EdgeInsets.all(10.0),
              itemCount: 2 ,
              itemBuilder: (context, index){
                return _petCard(context, index);
              },
            ),


            /*Padding(
          padding: EdgeInsets.only(left: 100.0,),
          child: Image.asset("lib/images/mensagem_tutorial.png",height: 190.0,),
        )*/



    );
  }

  void _registrarPet() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RegistrarpetsPage()));
  }

  Widget _petCard(BuildContext context, int index) {
    return GestureDetector(
      child: Card(
        elevation: 10,
        child: Padding(
            padding: EdgeInsets.all(10.0),
            child: ListTile(
              title: Text('Nome',style: TextStyle(fontSize: 20 )),
              subtitle: Text('Raça'),
              leading: Image.asset('lib/images/pet_logo.png'),
            )),
      ),
    );
  }

/*widget function(){
    if(lista != null)
    return Padding
  }*/
}
