import 'package:http/http.dart' as http;
import 'dart:convert';
import 'login_helper.dart';

const BASE_URL = "http://scrimesdesh.com.br/index.php/rest/";

class Api {
  String token;

  Api({this.token});

  Future<Login> login(String email, String senha) async {
    http.Response response = await http.post(BASE_URL + "Usuario",
        body: jsonEncode({"senha": senha, "email": email}),
        headers: {'token': token, 'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      Login dadosJson = new Login.fromMap(json.decode(response.body));
      return dadosJson;
    } else {
      return null;
    }
  }

  Future<Login> cadastro(
      String nome,
      String email,
      String senha,
      String telefone,
      String bairro,
      String num_casa,
      String ponto_ref,
      String rua) async {
    http.Response response = await http.post(BASE_URL + "Usuario/cadastro",
        body: jsonEncode({
          "nome": nome,
          "email": email,
          "senha": senha,
          "telefone": telefone,
          "bairro": bairro,
          "num_casa": num_casa,
          "ponto_ref": ponto_ref,
          "rua": rua
        }),
        headers: {'token': token, 'Content-Type': 'application/json'});
//    print(response.body);
    if (response.statusCode == 200) {
      Login dadosJson = new Login.fromMap(json.decode(response.body));
      print(response.body);
      return dadosJson;
    } else {
      return null;
    }
  }
}
