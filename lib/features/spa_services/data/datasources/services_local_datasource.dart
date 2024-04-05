import 'dart:developer';

import 'package:spa_salon/core/data/spa_database_client.dart';
import 'package:spa_salon/core/utils/enums/service_type.dart';
import 'package:spa_salon/features/spa_services/domain/entities/service/service_model.dart';
import 'package:spa_salon/features/spa_services/domain/entities/subservice/subservice_model.dart';
import 'package:spa_salon/features/spa_services/domain/entities/subservice_price/subservice_price_model.dart';
import 'package:sqflite/sqflite.dart';

class ServicesLocalDatasource {
  ServicesLocalDatasource({required this.database});

  final Database database;
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

  Future<List<SubserviceModel>> getSubservicesByServiceId(int serviceId) async {
    final subservicesList = await database.rawQuery('''
      SELECT * 
      FROM ${SpaDatabaseClient.SUB_SERIVCES_TABLE_NAME} 
      WHERE service_type = $serviceId
      ''');

    return subservicesList.map((subservice) {
      final newSubservice = SubserviceModel(
        id: subservice["sub_service_id"] as int,
        title: subservice["title"] as String,
        imageUrl: subservice["image_url"] as String,
        serviceType: ServiceType.values[subservice["service_type"] as int],
      );

      return newSubservice;
    }).toList();
  }

  Future<SubserviceModel> getSubserviceById(int subserviceId) async {
    final subservice = (await database.rawQuery('''
      SELECT * 
      FROM ${SpaDatabaseClient.SUB_SERIVCES_TABLE_NAME} 
      WHERE sub_service_id = $subserviceId
      '''))[0];
    final pricesList = await database.rawQuery('''
        SELECT *
        FROM ${SpaDatabaseClient.SUB_SERIVCE_PRICES_TABLE_NAME}
        WHERE sub_service_id = $subserviceId
        ''');
    final descriptionsList = await database.rawQuery('''
        SELECT *
        FROM ${SpaDatabaseClient.SUB_SERIVCE_DESCRIPTIONS_TABLE_NAME}
        WHERE sub_service_id = $subserviceId
        ''');

    final newPricesList = pricesList
        .map((price) => SubservicePriceModel.fromDatabaseRow(price))
        .toList();

    final newDescriptionList =
        descriptionsList.map((e) => e["description"].toString()).toList();

    return SubserviceModel(
      id: subservice["sub_service_id"] as int,
      title: subservice["title"] as String,
      imageUrl: subservice["image_url"] as String,
      serviceType: ServiceType.values[subservice["service_type"] as int],
      prices: newPricesList,
      descriptions: newDescriptionList,
    );
  }
}
