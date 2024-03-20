part of 'spa_services_cubit.dart';

@freezed
class SpaServicesState with _$SpaServicesState {
  const factory SpaServicesState.initial() = _Initial;
  const factory SpaServicesState.loaded({
    required List<ServiceModel> services,
  }) = _Loaded;
  const factory SpaServicesState.loading() = _Loading;
  const factory SpaServicesState.loadingFailure() = _LoadingFailure;
}
