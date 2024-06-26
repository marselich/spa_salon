import 'package:spa_salon/features/spa_services/data/datasources/services_local_datasource.dart';
import 'package:spa_salon/features/spa_services/domain/entities/service/service_model.dart';
import 'package:spa_salon/features/spa_services/domain/entities/subservice/subservice_model.dart';
import 'package:spa_salon/features/spa_services/domain/repositories/services_repository.dart';

class ServicesRepositoryImpl implements ServicesRepository {
  ServicesRepositoryImpl({required this.localDatasource});

  final ServicesLocalDatasource localDatasource;

  @override
  Future<List<ServiceModel>> getServices() async {
    return await localDatasource.getServices();
  }

  @override
  Future<List<SubserviceModel>> getSubservices(int serviceId) async {
    return await localDatasource.getSubservicesByServiceId(serviceId);
  }

  @override
  Future<SubserviceModel> getSubserviceById(int subserviceId) async {
    return await localDatasource.getSubserviceById(subserviceId);
  }
}
