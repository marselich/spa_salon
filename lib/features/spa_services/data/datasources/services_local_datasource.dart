import 'dart:developer';

import 'package:spa_salon/features/spa_services/domain/entities/service/service_model.dart';
import 'package:sqflite/sqflite.dart';

class ServicesLocalDatasource {
  final Database database;

  ServicesLocalDatasource({required this.database});
  Future<List<ServiceModel>> getServices() async {
    final list = await database.rawQuery("SELECT * FROM services");
    // final list = await database.query(
    //   "services",
    //   columns: ["service_id", "title", "imageUrl"],
    // );
    final serviceList =
        list.map((e) => ServiceModel.fromDatabaseRow(e)).toList();
    return serviceList;
  }
}
