import 'dart:async';
import 'dart:io' as io;
import 'package:food_app_v2/models/Categories.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:food_app_v2/core/config.dart';
import 'package:path_provider/path_provider.dart';
import 'package:food_app_v2/models/ProductList.dart';
import 'package:food_app_v2/models/MyCart.dart';


class DatabaseManager
{
  static Database ? _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDb();
    return _db!;
  }

  initDb() async {  //init db
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, db_name);
    var db = await openDatabase(path, version: 1, onCreate: _createTable);
    return db;
  }

  database_path() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, db_name);
    return path;
  }

  _createTable(Database db, int version) async {
    await db.execute("CREATE TABLE `products` (`id` INT PRIMARY KEY, `media_id` INTEGER, `title` VARCHAR(255), `description` TEXT, `price` DOUBLE, `total_rate` INT, `total_vote` INT, `status` BOOLEAN, `media` VARCHAR(255), `isFavourite` BOOLEAN)");
    await db.execute("CREATE TABLE `cart` (`productID` INTEGER PRIMARY KEY, `productName` VARCHAR(255), `productDescription` TEXT, `productQuantity` INT, `productThumbnails` VARCHAR(255), `productPrice` DOUBLE, `productTotalPrice` DOUBLE)");
    await db.execute("CREATE TABLE `explore` (`id` INTEGER PRIMARY KEY, `media_id` INT, `user_id` INT, `name` VARCHAR(255), `background` VARCHAR(255), `border_color` VARCHAR(255), `description` TEXT, `media` VARCHAR(255))");
  }


  /* Table Products */
  fetchProducts() async {
    final dbClient = await db;
    final result = await dbClient.query("products");
    return result;
  }

  insertProducts(ProductList product) async {
    final dbClient = await db;
    final insert = await dbClient.insert("products", product.toMap());
    return insert;
  }

  deleteProducts() async {
    final dbClient = await db;
    return await dbClient.delete('products');
  }

  fetchDetailProduct(int productID) async {
    final dbClient = await db;
    final result = await dbClient.query(
      "products",
      where: 'id = ?',
      whereArgs: [productID]);
    return result;
  }


  /* Table Cart */
  fetchCart() async {
    final dbClient = await db;
    final result = await dbClient.query("cart");
    return result;
  }

  insertCart({required int ? productID, required String ? productName, required String ? productDescription, required int ? productQuantity, required double ? productPrice, required String ? productThumbnails, required double ? productTotalPrice}) async {
    final dbClient = await db;
    int ? currentQuantity = 0;
    try{
      final currentProduct = await this.fetchDetailProductInCart(productID);
      MyCart item = MyCart.fromMap(currentProduct[0]);
      currentQuantity = item.productQuantity! + productQuantity!;
      dbClient.delete(
          "cart",
          where: 'productID = ?',
          whereArgs: [productID]
      );
    } catch (e) {
      currentQuantity = productQuantity;
    }
    final insert = await dbClient.rawInsert("INSERT INTO `cart` (`productID`, `productName`, `productDescription`, `productQuantity`, `productThumbnails`, `productPrice`, `productTotalPrice`) VALUES (?, ?, ?, ?, ?, ?, ?)", [productID, productName, productDescription, currentQuantity, productThumbnails, productPrice, productTotalPrice]);
    return insert;
  }

  clearCart() async {
    final dbClient = await db;
    return await dbClient.delete('cart');
  }

  removeItemInCart(int ? productID) async {
    final dbClient = await db;
    return await dbClient.delete('cart', where: 'productID = ?', whereArgs: [productID]);
  }

  fetchDetailProductInCart(int ? productID) async {
    final dbClient = await db;
    final result = await dbClient.query(
        "cart",
        where: 'productID = ?',
        whereArgs: [productID]);
    return result;
  }

  updateCart({required int ? productID, required int ? productQuantity, required double ? productTotalPrice}) async {
    final dbClient = await db;
    final update = await dbClient.rawUpdate("UPDATE `cart` SET `productQuantity` = ?, `productTotalPrice` = ? WHERE productID = ?", [productQuantity, productTotalPrice, productID]);
    return update;
  }


  /* Explore table */
  insertExplore(Categories categories) async {
    final dbClient = await db;
    return await dbClient.insert("explore", categories.toMap());
  }

  clearExploder() async {
    final dbClient = await db;
    return await dbClient.delete('explore');
  }

  fetchExplore() async {
    print(await this.database_path());
    final dbClient = await db;
    final result = await dbClient.query("explore");
    return result;
  }
}