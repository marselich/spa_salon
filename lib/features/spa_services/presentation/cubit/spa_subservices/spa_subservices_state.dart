part of 'spa_subservices_cubit.dart';

@freezed
class SpaSubservicesState with _$SpaSubservicesState {
  const factory SpaSubservicesState.initial() = _Initial;
  const factory SpaSubservicesState.loaded({
    required List<SubserviceModel> subServices,
  }) = _Loaded;
  const factory SpaSubservicesState.loading() = _Loading;
  const factory SpaSubservicesState.loadingFailure() = _LoadingFailure;
  const factory SpaSubservicesState.showSubserviceSnackBar({
    required String text,
  }) = _ShowSubserviceSnackBar;
}
