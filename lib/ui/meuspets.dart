import 'package:flutter/material.dart';
import 'package:flutter_your_pet/ui/registrarpets.dart';
import 'package:flutter_your_pet/utils/Dialogs.dart';

class MeuspetsPage extends StatefulWidget {
  @override
  _MeuspetsPageState createState() => _MeuspetsPageState();
}

class _MeuspetsPageState extends State<MeuspetsPage> {
  Dialogs dialog = new Dialogs();

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
      body: ListView.builder(
        padding: EdgeInsets.all(10.0),
        itemCount: 2,
        itemBuilder: (context, index) {
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
              title: Text('Nome', style: TextStyle(fontSize: 24)),
              subtitle: Text(
                'Raça',
                style: TextStyle(fontSize: 18),
              ),
              leading: Image.asset('lib/images/pet_logo.png'),
            )),
      ),
      onTap: () {
        _showOptions(context, index);
      },
    );
  }

  void _showOptions(BuildContext context, int index) {
    List<Widget> botoes = [];
    botoes.add(FlatButton(
        onPressed: () {},
        child: Row(
          children: <Widget>[
            Icon(
              Icons.visibility,
              color: Colors.deepOrange,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                children: <Widget>[
                  Text(
                    'Visualizar',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ],
              ),
            ),
          ],
        )));
    botoes.add(FlatButton(
        onPressed: () {},
        child: Row(
          children: <Widget>[
            Icon(
              Icons.edit,
              color: Colors.deepOrange,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                children: <Widget>[
                  Text(
                    'Editar',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ],
              ),
            ),
          ],
        )));
    botoes.add(FlatButton(
        onPressed: () {
          _showMessage();
        },
        child: Row(
          children: <Widget>[
            Icon(
              Icons.delete,
              color: Colors.deepOrange,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                children: <Widget>[
                  Text(
                    'Excluir',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ],
              ),
            ),
          ],
        )));
    dialog.showBottomOptions(context, botoes);
  }

  Future<bool> _showMessage (){
    showDialog(
        context: context,
      builder: (context){
          return AlertDialog(
            elevation: 10,
         title: Text('Atenção!'),
            content: Text('Você tem certeza que deseja excluir esse PET?'),
            actions: <Widget>[
              FlatButton(
                child: Text('Cancelar',style: TextStyle(color: Colors.deepOrange),),
                onPressed: (){
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text('Ok',style: TextStyle(color: Colors.deepOrange),),
                onPressed: (){},
              ),
            ],
          );
      }
    );
  }


/*widget function(){
    if(lista != null)
    return Padding
  }*/
}
