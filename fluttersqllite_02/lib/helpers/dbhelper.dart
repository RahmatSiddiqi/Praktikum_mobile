import 'package:fluttersqllite_02/models/contact.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper {
  static final DbHelper _instance = DbHelper._internal();
  static Database? _database;

  final String tabelName = 'tableKontak';
  final String columnId = 'id';
  final String columnName = 'name';
  final String columnMobileNo = 'mobileNo';

  DbHelper._internal();
  factory DbHelper() => _instance;

  Future<Database?> get _db async {
    if (_database != null) {
      return _database;
    }

    _database = await _initDb();
    return _database;
  }

  Future<Database?> _initDb() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'kontak.db');

    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    var sql = "CREATE TABLE $tabelName($columnId INTEGER PRIMARY KEY, "
        "$columnName TEXT,"
        "$columnMobileNo TEXT)";
    await db.execute(sql);
  }

  Future<int?> saveKontak(Contact kontak) async {
    var dbClient = await _db;
    return await dbClient!.insert(tabelName, kontak.toMap());
  }

  Future<List?> getAllKontak() async {
    var dbClient = await _db;
    var result = await dbClient!.query(tabelName, columns: [
      columnId,
      columnName,
      columnMobileNo,
    ]);

    return result.toList();
  }

  Future<int?> updateKontak(Contact kontak) async {
    var dbClient = await _db;
    return await dbClient!.update(tabelName, kontak.toMap(),
        where: '$columnId = ?', whereArgs: [kontak.id]);
  }

  Future<int?> deleteKontak(int id) async {
    var dbclient = await _db;
    return await dbclient!
        .delete(tabelName, where: '$columnId = ?', whereArgs: [id]);
  }
}
