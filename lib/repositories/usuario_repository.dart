/*import 'package:flutter/material.dart';
import 'package:learnit/database/db.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

import 'package:learnit/models/posicao.dart';

class UsuarioRepository extends ChangeNotifier {
  late Database db;
  List<Posicao> _usuario = [];
  int _assuntos_estudados = 0;

  get assuntos_estudados => _assuntos_estudados;
  List<Posicao> get usuario => _usuario;

  UsuarioRepository() {
    _initRepository();
  }

  _initRepository() async {
    await _getAssuntos_estudados();
  }

  _getAssuntos_estudados() async {
    db = await DB.instance.database;
    List conta = await db.query('usuario', limit: 1);
    _usuario = conta.first['assuntos_estudados'];
    notifyListeners();
  }

  setAssuntos_estudados(int quantidade) async {
    db = await DB.instance.database;
    db.update('usuario', {'assuntos_estudados': quantidade});
    _assuntos_estudados = quantidade;
    notifyListeners();
  }
}*/
