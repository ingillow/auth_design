import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SQLService {
  static const String _dbName = 'database.db';
  static const int _dbVersion = 1;
  static const String _tableName = 'jwt_token';

  static const String _columnId = 'id';
  static const String _columnToken = 'token';

  static Database? _db;

  Future<Database?> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDatabase();
    return null;
  }

  initDatabase() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, _dbName);
    var db = await openDatabase(path, version: _dbVersion, onCreate: _onCreate);
    return db;
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $_tableName (
        $_columnId INTEGER PRIMARY KEY,
        $_columnToken TEXT NOT NULL
      )
    ''');
  }

  Future<void> saveAuthToken(String token) async {
    final db = _db;
    await db?.insert(
      _tableName,
      {_columnToken: token},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<String?> getAuthToken() async {
    final db = _db;
    final List<Map<String, Object?>>? maps = await db?.query(_tableName);
    if (maps!.isNotEmpty) {
      return maps.first[_columnToken] as String;
    }
    return null;
  }

  Future<void> deleteAuthToken() async {
    final db = _db;
    await db?.delete(_tableName);
  }
}
