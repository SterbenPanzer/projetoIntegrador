import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:flutter_your_pet/utils/Strings.dart';

class Databases {
  Database _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    } else {
      _db = await initDb();
      return _db;
    }
  }

  Future<Database> initDb() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, "apiintegrador.db");

    return await openDatabase(path, version: 1,
        onCreate: (Database db, int newerVersion) async {
          await db.execute(
              "CREATE TABLE $logadoTable ($idLogadoColumn INTEGER PRIMARY KEY AUTOINCREMENT, $nomeLogadoColumn VARCHAR, $login_idLogadoColumn INT, $tokenColumn TEXT);");
          await db.execute(
            "CREATE TABLE $loginTable ($idLoginColumn INTEGER PRIMARY KEY AUTOINCRMENT, $nomeLoginColumn TEXT, $emailLoginColumn TEXT, $senhaLoginColumn TEXT, $telefoneLoginColumn TEXT, $bairroLoginColumn TEXT, $num_casaLoginColumn INT, $ponto_refLoginColumn TEXT, $ruaLoginColumn TEXT, $tokenLoginColumn TEXT);"
          );
        });
  }

}