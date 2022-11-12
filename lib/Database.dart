//データベースを開く
//データベースは、ファイル システム内のパスで表される 1 つのファイルです。


import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';



class BooksDao{


  Future _openDatabase() async {
  // get the application documents directory
  var dir = await getApplicationDocumentsDirectory();
  // make sure it exists
  await dir.create(recursive: true);
  // build the database path
  var dbPath = join(dir.path, 'my_database.db');
  // open the database
  var db = await databaseFactoryIo.openDatabase(dbPath);



  }



}