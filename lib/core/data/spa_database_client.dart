import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SpaDatabaseClient {
  static const int DATABASE_VERSION = 3;
  static const String DATABASE_NAME = 'spa_salon.db';
  static const String SERIVCES_TABLE_NAME = 'services';
  static const String SUB_SERIVCES_TABLE_NAME = 'sub_services';
  static const String SUB_SERIVCE_PRICES_TABLE_NAME = 'sub_service_prices';
  static const String SUB_SERIVCE_DESCRIPTIONS_TABLE_NAME =
      'sub_service_descriptions';
  static const String CART_NAME = 'cart';

  Future<Database> init() async {
    // final path = join(await getDatabasesPath(), DATABASE_NAME);
    // final file = File(path);
    // await file.delete();
    final database = await _connect();
    final rowServiceCount =
        await database.rawQuery("SELECT * from $SERIVCES_TABLE_NAME");
    final rowSubserviceCount =
        await database.rawQuery("SELECT * from $SUB_SERIVCES_TABLE_NAME");
    if (rowServiceCount.isEmpty || rowSubserviceCount.isEmpty) {
      await _insertIntoDatabase(database);
    }
    return database;
  }

  Future<Database> _connect() async {
    return await openDatabase(
      join(await getDatabasesPath(), DATABASE_NAME),
      version: DATABASE_VERSION,
      onCreate: (db, version) async {
        await _createTables(db);
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        await db.delete(SERIVCES_TABLE_NAME);
        await db.delete(SUB_SERIVCES_TABLE_NAME);
        await db.delete(SUB_SERIVCE_PRICES_TABLE_NAME);
        await db.delete(SUB_SERIVCE_DESCRIPTIONS_TABLE_NAME);
        await _insertIntoDatabase(db);
      },
    );
  }

  Future<void> _insertIntoDatabase(Database database) async {
    await _insertServicesInDatabase(database);
    await _insertSubservicesInDatabase(database);
  }

  Future<void> _insertServicesInDatabase(Database database) async {
    final String response =
        await rootBundle.loadString('assets/json/services.json');
    final dataList = await json.decode(response) as List<dynamic>;
    dataList.forEach((element) async {
      final databaseItem = element as Map<String, dynamic>;
      await database.insert(SERIVCES_TABLE_NAME, databaseItem,
          conflictAlgorithm: ConflictAlgorithm.replace);
    });
  }

  Future<void> _insertSubservicesInDatabase(Database database) async {
    final String response =
        await rootBundle.loadString('assets/json/sub_services.json');
    final dataList = await json.decode(response) as List<dynamic>;
    dataList.forEach((element) async {
      final databaseItem = element as Map<String, dynamic>;
      final pricesList = databaseItem["price"] as List<dynamic>;
      final descriptionsList = databaseItem["description"] as List<dynamic>;

      pricesList.forEach((price) async {
        final newPrice = price as Map<String, dynamic>;
        final newDataPrice = {
          "sub_service_id": databaseItem["sub_service_id"],
          "time_period": newPrice["timePeriod"],
          "amount": newPrice["amount"],
        };
        await database.insert(SUB_SERIVCE_PRICES_TABLE_NAME, newDataPrice);
      });

      descriptionsList.forEach((description) async {
        final newDescription = description as String;
        final newDataDescription = {
          "sub_service_id": databaseItem["sub_service_id"],
          "description": newDescription,
        };

        await database.insert(
            SUB_SERIVCE_DESCRIPTIONS_TABLE_NAME, newDataDescription);
      });

      final newSubservice = {
        "sub_service_id": databaseItem["sub_service_id"],
        "title": databaseItem["title"],
        "image_url": databaseItem["image_url"],
        "service_type": databaseItem["service_type"],
      };
      await database.insert(SUB_SERIVCES_TABLE_NAME, newSubservice);
    });
  }

  Future<void> _createTables(Database db) async {
    await db.execute('''
CREATE TABLE $SERIVCES_TABLE_NAME (
      service_id INTEGER PRIMARY KEY autoincrement,
      title TEXT,
      image_url TEXT
    )
    ''');

    await db.execute('''
CREATE TABLE $SUB_SERIVCES_TABLE_NAME (
      sub_service_id INTEGER PRIMARY KEY autoincrement,
      title TEXT,
      image_url TEXT,
      service_type INTEGER,
      FOREIGN KEY (service_type) 
          REFERENCES $SERIVCES_TABLE_NAME (service_id)
          ON DELETE CASCADE
    )
    ''');

    await db.execute('''
CREATE TABLE $SUB_SERIVCE_PRICES_TABLE_NAME (
      sub_service_id INTEGER,
      time_period TEXT,
      amount REAL,
      FOREIGN KEY (sub_service_id) 
          REFERENCES $SUB_SERIVCES_TABLE_NAME (sub_service_id)
    )
    ''');

    await db.execute('''
CREATE TABLE $SUB_SERIVCE_DESCRIPTIONS_TABLE_NAME (
      sub_service_id INTEGER,
      description TEXT,
      FOREIGN KEY (sub_service_id) 
          REFERENCES $SUB_SERIVCES_TABLE_NAME (sub_service_id)
    )
    ''');

    await db.execute('''
CREATE TABLE $CART_NAME (
      id INTEGER PRIMARY KEY autoincrement,
      title TEXT,
      image_url TEXT,
      price REAL,
      time_period TEXT,
      count INTEGER,
      type INTEGER
    )
    ''');

    // INSERT INTO services (service_id, title, imageUrl) VALUES (0, "Массаж для лица", "");
// INSERT INTO services (service_id, title, imageUrl) VALUES (1, "Уход для лица", "");
// INSERT INTO services (service_id, title, imageUrl) VALUES (2, "Массаж для тела", "");
// INSERT INTO services (service_id, title, imageUrl) VALUES (3, "Уход для тела", "");
// INSERT INTO services (service_id, title, imageUrl) VALUES (4, "Массажный комплекс", "");
// INSERT INTO services (service_id, title, imageUrl) VALUES (5, "Спа-программы", "");
// INSERT INTO services (service_id, title, imageUrl) VALUES (6, "Женская депиляция", "");
// INSERT INTO services (service_id, title, imageUrl) VALUES (7, "Мужская депиляция", "");
  }
}
