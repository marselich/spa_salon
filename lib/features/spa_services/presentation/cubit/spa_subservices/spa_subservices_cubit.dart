import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spa_salon/features/spa_services/domain/entities/subservice/subservice_model.dart';
import 'package:spa_salon/features/spa_services/domain/repositories/services_repository.dart';

part 'spa_subservices_state.dart';
part 'spa_subservices_cubit.freezed.dart';

class SpaSubservicesCubit extends Cubit<SpaSubservicesState> {
  SpaSubservicesCubit(this.repository)
      : super(const SpaSubservicesState.initial());

  final ServicesRepository repository;

  Future<void> getSubservices(int serviceId) async {
    emit(const SpaSubservicesState.loading());
    final subservices = await repository.getSubservices(serviceId);
    emit(SpaSubservicesState.loaded(subServices: subservices));
  }

  Future<SubserviceModel> getSubseriveById(int subserviceId) async {
    return await repository.getSubserviceById(subserviceId);
    // emit(SpaSubservicesState.showSubserviceBottomSheet(
    //   subservice: subservice,
    // ));
  }
}
