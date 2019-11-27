import 'package:flutter/material.dart';
import 'package:flutter_your_pet/helpers/login_helper.dart';
import 'package:flutter_your_pet/utils/Dialogs.dart';
import 'package:flutter_your_pet/helpers/api.dart';
import 'package:flutter_your_pet/ui/login.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  LoginHelper helper = LoginHelper();
  Dialogs dialog = new Dialogs();
  Api api = new Api();

  final _nomeController = TextEditingController();
  final _senhaController = TextEditingController();
  final _emailController = TextEditingController();
  final _telefoneController = TextEditingController();
  final _bairroController = TextEditingController();
  final _ruaController = TextEditingController();
  final _numCasaController = TextEditingController();
  final _refController = TextEditingController();
  final _nomeFocus = FocusNode();
  final _formCadastro = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Cadastre seus dados aqui."),
          backgroundColor: Colors.deepOrange,
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(15)))),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Form(
            key: _formCadastro,
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
                            labelText: "Qual seu nome?",
                            labelStyle: TextStyle(color: Colors.black)),
                        style: TextStyle(fontSize: 16.0),
                        focusNode: _nomeFocus,
                        controller: _nomeController,
                      ),
                    ],
                  ),
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
                            labelText: "Crie uma senha ",
                            labelStyle: TextStyle(color: Colors.black)),
                        style: TextStyle(fontSize: 16.0),
                        controller: _senhaController,
                      ),
                    ],
                  ),
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
                            labelText: "Qual o seu email? ",
                            labelStyle: TextStyle(color: Colors.black)),
                        style: TextStyle(fontSize: 16.0),
                        controller: _emailController,
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
                            labelText: "Qual o seu número de telefone? ",
                            labelStyle: TextStyle(color: Colors.black)),
                        style: TextStyle(fontSize: 16.0),
                        controller: _telefoneController,
                      ),
                    ],
                  ),
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
                            labelText: "Qual o seu bairro?",
                            labelStyle: TextStyle(color: Colors.black)),
                        style: TextStyle(fontSize: 16.0),
                        controller: _bairroController,
                      ),
                    ],
                  ),
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
                            labelText: "Qual a sua rua? ",
                            labelStyle: TextStyle(color: Colors.black)),
                        style: TextStyle(fontSize: 16.0),
                        controller: _ruaController,
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
                            labelText: "Qual o número da sua casa? ",
                            labelStyle: TextStyle(color: Colors.black)),
                        style: TextStyle(fontSize: 16.0),
                        controller: _numCasaController,
                      ),
                    ],
                  ),
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
                            labelText: "Diga um ponto de referência",
                            labelStyle: TextStyle(color: Colors.black)),
                        style: TextStyle(fontSize: 16.0),
                        controller: _refController,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding:
                          EdgeInsets.only(right: 10.0, left: 10.0, top: 20.0),
                      child: Container(
                        height: 50.0,
                        child: RaisedButton(
                          padding: EdgeInsets.symmetric(horizontal: 30.0),
                          elevation: 10.0,
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          onPressed: () async {
                            if (_formCadastro.currentState.validate()) {
                              if (await api.cadastro(
                                    _nomeController.text,
                                    _emailController.text,
                                    _senhaController.text,
                                    _telefoneController.text,
                                    _bairroController.text,
                                    _numCasaController.text,
                                    _refController.text,
                                    _ruaController.text,
                                  ) !=
                                  null) {
                                Login user = await api.login(
                                    _emailController.text,
                                    _senhaController.text);
                                Navigator.pop(context);

                                if (user != null) {
                                  helper.saveLogado(user.id, user.token);
                                  Navigator.pop(context);
                                  await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()));
                                }
                              } else {
                                dialog.showAlertDialog(
                                    context, 'Aviso', 'Usuário não cadastrado');
                              }
                            }
                          },
                          color: Colors.deepOrange,
                          child: Text(
                            "Cadastrar",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
