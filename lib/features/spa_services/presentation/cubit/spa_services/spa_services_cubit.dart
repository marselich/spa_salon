import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spa_salon/features/spa_services/domain/entities/service/service_model.dart';
import 'package:spa_salon/features/spa_services/domain/entities/subservice/subservice_model.dart';
import 'package:spa_salon/features/spa_services/domain/repositories/services_repository.dart';

part 'spa_services_state.dart';
part 'spa_services_cubit.freezed.dart';

class SpaServicesCubit extends Cubit<SpaServicesState> {
  SpaServicesCubit(this.repository) : super(const SpaServicesState.initial());

  final ServicesRepository repository;

  Future<void> getServices() async {
    emit(const SpaServicesState.loading());
    final services = await repository.getServices();
    emit(SpaServicesState.loaded(services: services));
  }
}
