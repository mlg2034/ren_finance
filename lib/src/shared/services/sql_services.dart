import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class  SqliterService {
  
Future<Database> initializeDB() async {
  String path = await getDatabasesPath();
  return openDatabase(
    version: 1,
    join(path, 'database.db'),
    onCreate: (database, version) async {
      await database.execute(
          "CREATE TABLE Notes(id INTEGER PRIMARY KEY AUTOINCREMENT,description TEXT NOT NULL");
    },
  );
}

}