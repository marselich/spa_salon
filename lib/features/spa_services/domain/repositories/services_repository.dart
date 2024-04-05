import 'package:spa_salon/features/spa_services/domain/entities/service/service_model.dart';
import 'package:spa_salon/features/spa_services/domain/entities/subservice/subservice_model.dart';

abstract class ServicesRepository {
  Future<List<ServiceModel>> getServices();
  Future<List<SubserviceModel>> getSubservices(int serviceId);
  Future<SubserviceModel> getSubserviceById(int subserviceId);
}
