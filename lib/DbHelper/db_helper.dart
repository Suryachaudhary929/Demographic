import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._();
  static Database? _database;

  DatabaseHelper._();

  factory DatabaseHelper() => _instance;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'form_data.db'),
      onCreate: (db, version) {
        return db.execute(
            '''CREATE TABLE formData ( id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, phone TEXT, idnumber TEXT, income TEXT, address TEXT, landmark TEXT, selectedoption TEXT, selectedoption1 TEXT, selectedoption2 TEXT, selectedoption3 TEXT, selectedoption4 TEXT, radiobutton TEXT, radiobutton1 TEXT, radiobutton2 TEXT, radiobutton3 TEXT, radiobutton4 TEXT, radiobutton5 TEXT, radiobutton6 TEXT, radiobutton7 TEXT, reason TEXT, reason1 TEXT, reason2 TEXT, reason3 TEXT, amount TEXT, amount1 TEXT, radiobox TEXT, none1 TEXT, none2 TEXT, hyper1 TEXT, hyper2 TEXT, diabetes1 TEXT, diabetes2 TEXT, covid1 TEXT, covid2 TEXT, fall1 TEXT, fall2 TEXT, other1 TEXT, other2 TEXT, lids1 TEXT, lids2 TEXT, conjunctiva1 TEXT, conjunctiva2 TEXT, cornea1 TEXT, cornea2 TEXT, ac1 TEXT, ac2 TEXT, iris1 TEXT, iris2 TEXT, _radio TEXT, aided1 TEXT, aided2 TEXT, aided3 TEXT, pinhole1 TEXT, pinhole2 TEXT, pinhole3 TEXT, unaided1 TEXT, unaided2 TEXT, unaided3 TEXT, unaidednear TEXT, aidednear TEXT, addpower TEXT, nearvision TEXT, fp1 TEXT, fp2 TEXT, fp3 TEXT, sub1 TEXT, sub2 TEXT, sub3 TEXT, bcva1 TEXT, bcva2 TEXT, bcva3 TEXT, other4 TEXT, radiovalue TEXT, radiovalue1 TEXT, radiovalue2 TEXT, specify TEXT, specify1 TEX, specify2 TEXT, pay TEXT, pay1 TEXT, dateandtime TEXT)''');
      },
      version: 1,
    );
  }

  Future<int> insertData(Map<String, dynamic> data) async {
    final db = await database;
    return await db.insert('formData', data);
  }

  Future<List<Map<String, dynamic>>> fetchData() async {
    final db = await database;
    return await db.query('formData');
  }

  Future<int> update(int id, Map<String, dynamic> data) async {
    final db = await database;
    return await db.update('formData', data, where: 'id = ?', whereArgs: [id]);
  }

  Future<int> deleteData(int id) async {
    final db = await database;
    return await db.delete('formData', where: 'id = ?', whereArgs: [id]);
  }
  
}
