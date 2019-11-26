import 'dart:async';
import 'package:flutter_your_pet/utils/Strings.dart';
import 'package:flutter_your_pet/helpers/databases.dart';
import 'package:sqflite/sqflite.dart';

class LoginHelper {
  static final LoginHelper _instance = LoginHelper.internal();

  factory LoginHelper() => _instance;

  LoginHelper.internal();

  Databases databases = new Databases();

  Future<bool> saveLogado(int login_id, String tokens) async {
    Database dbLogado = await databases.db;
    Logado logado = new Logado();
    logado.id = 1;
    logado.logado_login_id = login_id;
    logado.token = tokens;
    if (await dbLogado.insert(logadoTable, logado.toMap()) > 0) {
      return true;
    } else {
      return false;
    }
  }

  Future<int> getLogadoid() async {
    Database dbLogado = await databases.db;
    List<Map> maps = await dbLogado.rawQuery("SELECT * FROM $logadoTable");
    if (maps.length > 0) {
      Logado usuariologado = Logado.fromMap(maps.first);
      return usuariologado.logado_login_id;
    } else {
      return null;
    }
  }

  Future<String> getLogado() async {
    Database dbLogado = await databases.db;
    List<Map> maps = await dbLogado.rawQuery("SELECT * FROM $logadoTable");
    if (maps.length > 0) {
      Logado usuariologado = Logado.fromMap(maps.first);
      return usuariologado.token;
    } else {
      return null;
    }
  }

  Future<int> deleteLogado() async {
    Database dbLogin = await databases.db;
    await dbLogin.delete(logadoTable);
    return 1;
  }

  Future close() async {
    Database dbLogin = await databases.db;
    dbLogin.close();
  }
}

class Logado {
  int id;
  int logado_login_id;
  String token;

  Logado();

  Logado.fromMap(Map map) {
    id = map[idLogadoColumn];
    logado_login_id = map[login_idLogadoColumn];
    token = map[tokenColumn];
  }

  Map toMap() {
    Map<String, dynamic> map = {
      idLoginColumn: id,
      login_idLogadoColumn: logado_login_id,
      tokenColumn: token
    };
    return map;
  }
}

class Login {
  dynamic id;
  dynamic nome;
  dynamic senha;
  dynamic email;
  dynamic telefone;
  dynamic bairro;
  dynamic num_casa;
  dynamic ponto_ref;
  dynamic rua;
  dynamic token;
  dynamic admin;



 Login({this.id, this.nome, this.email, this.senha, this.telefone, this.bairro, this.num_casa, this.ponto_ref, this.rua,this.token,this.admin});
//  factory Login.fromJson(Map<String, dynamic> json) {
//    return Login(
//      id: json['id'],
//      nome: json['nome'],
//      email: json['email'],
//      senha: json['senha'],
//      telefone: json['telefone'],
//      bairro: json['bairro'],
//      num_casa: json['num_casa'],
//      ponto_ref: json['ponto_ref'],
//      rua: json['rua'],
//    );
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['id'] = this.id;
//    data['nome'] = this.nome;
//    data['email'] = this.email;
//    data['senha'] = this.senha;
//    data['telefone'] = this.telefone;
//    data['bairro'] = this.bairro;
//    data['num_casa'] = this.num_casa;
//    data['ponto_ref'] = this.ponto_ref;
//    data['rua'] = this.rua;
//    return data;
//  }
  Login.fromMap(Map map) {
    id = map[id];
    nome = map[nome];
    senha = map[senha];
    email = map[email];
    telefone = map[telefone];
    bairro = map[bairro];
    num_casa = map[num_casa];
    ponto_ref = map[ponto_ref];
    rua = map[rua];
    token = map[token];
    admin = map[admin];
  }

  @override
  String toString() {
    return "Login(id: $id, name: $nome, email: $email, senha: $senha, telefone: $telefone, bairro: $bairro , num_casa: $num_casa, ponto_ref: $ponto_ref, rua: $rua  ,token: $token)";
  }
}


