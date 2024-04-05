import 'package:get_it/get_it.dart';

import 'package:spa_salon/core/data/spa_database_client.dart';
import 'package:spa_salon/features/spa_services/data/datasources/services_local_datasource.dart';
import 'package:spa_salon/features/spa_services/data/repositories/services_repository_impl.dart';
import 'package:spa_salon/features/spa_services/domain/repositories/services_repository.dart';
import 'package:spa_salon/features/spa_services/presentation/cubit/spa_services/spa_services_cubit.dart';
import 'package:spa_salon/features/spa_services/presentation/cubit/spa_subservices/spa_subservices_cubit.dart';
import 'package:sqflite/sqflite.dart';

class InjectionContainer {
  static Future<void> init() async {
    final sl = GetIt.I;

    sl.registerLazySingleton<ServicesLocalDatasource>(
      () => ServicesLocalDatasource(database: sl()),
    );
    sl.registerLazySingleton<ServicesRepository>(
      () => ServicesRepositoryImpl(
        localDatasource: sl(),
      ),
    );

    sl.registerFactory(
      () => SpaServicesCubit(sl()),
    );

    sl.registerFactory(
      () => SpaSubservicesCubit(sl()),
    );

    final database = await SpaDatabaseClient().init();

    sl.registerLazySingleton<Database>(() => database);
  }
}
