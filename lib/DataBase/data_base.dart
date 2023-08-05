import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class sqlDb{
  static Database? _db;
  Future<Database?>get db async{
    if(_db==null){
      _db =await intialDb();
      return _db;
    }
    else{
      return _db;
    }
  }
  intialDb()async{
    String databasepath=await getDatabasesPath();
    String path=join(databasepath,'prodacted.db');
    Database mydb=await openDatabase(path,onCreate:_onCreate,version: 2,onUpgrade: _onUpgrade);
    return mydb;
  }
  _onUpgrade(Database db,int oldversion,int newversion){
    print("onUpgrade===============");
  }
  _onCreate(Database db,int version) async{
    await db.execute('''
        CREATE TABLE"products"(
        productId INTEGER NOT NULL PRIMARY KEY
        productname TEXT NOT NULL
        productprice TEXT NOT NULL
        )
   ''' );    await db.execute('''
        CREATE TABLE"product_Notebook"(
        NotebookId INTEGER NOT NULL PRIMARY KEY
        Display TEXT NOT NULL
        Rezolution TEXT NOT NULL
        )
   ''' );    await db.execute('''
        CREATE TABLE"product_NotebookBag"(
        NotebookBagId INTEGER NOT NULL PRIMARY KEY
        Color TEXT NOT NULL
        Compatibility TEXT NOT NULL
        )
   ''' );    await db.execute('''
        CREATE TABLE"Brands"(
        BrandId INTEGER NOT NULL PRIMARY KEY
        Brandname TEXT NOT NULL
        )
   ''' );    await db.execute('''
        CREATE TABLE"Categoiies"(
        CategoiiesId INTEGER NOT NULL PRIMARY KEY
        CategoiiesName TEXT NOT NULL
        )
   ''' );    await db.execute('''
        CREATE TABLE"SubCategories"(
        SubCatId INTEGER NOT NULL PRIMARY KEY
        SubCatName TEXT NOT NULL
        )
   ''' );
print("onCreate=============");
  }
  readData(String sql)async{
    Database? mydb=await db;
    List<Map> response= await mydb!.rawQuery(sql);
    return response;
  }
  insertData(String sql)async{
    Database? mydb=await db;
    int response= await mydb!.rawInsert(sql);
    return response;
  }
   updateData(String sql)async{
    Database? mydb=await db;
    int response= await mydb!.rawUpdate(sql);
    return response;
  }
  deleteData(String sql)async{
    Database? mydb=await db;
    int response= await mydb!.rawDelete(sql);
    return response;
 }
}