import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SpaDatabaseClient {
  static const int DATABASE_VERSION = 2;
  static const String DATABASE_NAME = 'spa_salon.db';
  static const String SERIVCES_TABLE_NAME = 'services';
  static const String SUB_SERIVCES_TABLE_NAME = 'sub_services';
  static const String SUB_SERIVCE_PRICES_TABLE_NAME = 'sub_service_prices';
  static const String SUB_SERIVCE_DESCRIPTIONS_TABLE_NAME =
      'sub_service_descriptions';

  Future<Database> init() async {
    final database = await _connect();
    if (!(await databaseExists(
        join(await getDatabasesPath(), DATABASE_NAME)))) {
      _insertIntoDatabase(database);
    }
    return database;
  }

  Future<Database> _connect() async {
    return await openDatabase(
      join(await getDatabasesPath(), DATABASE_NAME),
      version: DATABASE_VERSION,
      onCreate: (db, version) async {
        await db.execute(
          //await rootBundle.loadString("assets/sql/db.sql"),
          _createTables(),
        );
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        await db.delete(SERIVCES_TABLE_NAME);
        //await db.delete(SUB_SERIVCES_TABLE_NAME);
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
      await database.insert(SERIVCES_TABLE_NAME, databaseItem);
    });
  }

  Future<void> _insertSubservicesInDatabase(Database database) async {
    final String response =
        await rootBundle.loadString('assets/json/sub_services.json');
    final dataList = await json.decode(response) as List<dynamic>;
    dataList.forEach((element) async {
      final databaseItem = element as Map<String, dynamic>;
      final pricesList = databaseItem["price"] as List<Map<String, dynamic>>;
      final descriptionsList = databaseItem["description"] as List<String>;

      pricesList.forEach((price) async {
        final newPrice = {
          "sub_service_id": databaseItem["sub_service_id"],
          "time_period": price["timePeriod"],
          "amount": price["amount"],
        };
        await database.insert(SUB_SERIVCE_PRICES_TABLE_NAME, newPrice);
      });

      descriptionsList.forEach((description) async {
        final newDescription = {
          "sub_service_id": databaseItem["sub_service_id"],
          "description": description,
        };

        await database.insert(
            SUB_SERIVCE_DESCRIPTIONS_TABLE_NAME, newDescription);
      });
    });
  }

  static String _createTables() {
    return ''' 
    CREATE TABLE $SERIVCES_TABLE_NAME (
      service_id INTEGER PRIMARY KEY autoincrement,
      title TEXT,
      image_url TEXT
    );
    CREATE TABLE $SUB_SERIVCES_TABLE_NAME (
      sub_service_id INT PRIMARY KEY autoincrement,
      title TEXT,
      image_url TEXT,
      price TEXT,
      service_type INTEGER,
      FOREIGN KEY (service_type) 
          REFERENCES $SERIVCES_TABLE_NAME (service_id)
          ON DELETE CASCADE
    );
    CREATE TABLE $SUB_SERIVCE_PRICES_TABLE_NAME (
      sub_service_id INT,
      time_period TEXT,
      amount INT,
      FOREIGN KEY (sub_service_id) 
          REFERENCES $SUB_SERIVCES_TABLE_NAME (sub_service_id)
    );
    CREATE TABLE $SUB_SERIVCE_DESCRIPTIONS_TABLE_NAME (
      sub_service_id INT,
      description TEXT,
      FOREIGN KEY (sub_service_id) 
          REFERENCES $SUB_SERIVCES_TABLE_NAME (sub_service_id)
    );
  ''';
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
