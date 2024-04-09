import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spa_salon/core/utils/enums/cart_item_type.dart';
import 'package:spa_salon/features/cart/domain/repositories/cart_repository.dart';
import 'package:spa_salon/features/spa_services/domain/entities/subservice/subservice_model.dart';
import 'package:spa_salon/features/spa_services/domain/repositories/services_repository.dart';

part 'spa_subservices_state.dart';
part 'spa_subservices_cubit.freezed.dart';

class SpaSubservicesCubit extends Cubit<SpaSubservicesState> {
  SpaSubservicesCubit(this.servicesRepository, this.cartRepository)
      : super(const SpaSubservicesState.initial());

  final ServicesRepository servicesRepository;
  final CartRepository cartRepository;

  Future<void> getSubservices(int serviceId) async {
    emit(const SpaSubservicesState.loading());
    final subservices = await servicesRepository.getSubservices(serviceId);
    emit(SpaSubservicesState.loaded(subServices: subservices));
  }

  Future<SubserviceModel> getSubseriveById(int subserviceId) async {
    return await servicesRepository.getSubserviceById(subserviceId);
  }

  Future<void> createCartItem({
    required String title,
    required String imageUrl,
    required double price,
    String? timePeriod,
    required int count,
    required CartItemType type,
  }) async {
    await cartRepository.insertCartItemInDatabase(
      title: title,
      imageUrl: imageUrl,
      price: price,
      timePeriod: timePeriod,
      count: count,
      type: type,
    );
    emit(const SpaSubservicesState.showSubserviceSnackBar(
      text: "Добавлено в корзину",
    ));
  }
}
