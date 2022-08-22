/*import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';

class DB {
  // Construtor com acesso privado
  DB._();
  // Criar uma instancia de DB
  static final DB instance = DB._();
  //Instancia do SQLite
  static Database? _database;

  get database async {
    if (_database != null) return _database;

    return await _initDatabase();
  }

  _initDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'usuario.db'),
      version: 1,
      onCreate: _onCreate,
    );
  }

  _onCreate(db, version) async {
    await db.execute(_usuario);
    await db.insert('usuario', {'assuntos_estudados': 0});
  }

  String get _usuario =>
      '''CREATE TABLE usuario (id INTEGER PRIMARY KEY AUTOINCREMENT, assuntos_estudados INTEGER);''';
}*/
