part of 'spa_cart_cubit.dart';

@freezed
class SpaCartState with _$SpaCartState {
  const factory SpaCartState.initial() = _Initial;
  const factory SpaCartState.loaded({
    required List<CartItemModel> cartList,
  }) = _Loaded;
  const factory SpaCartState.loading() = _Loading;
  const factory SpaCartState.loadingFailure() = _LoadingFailure;
}
