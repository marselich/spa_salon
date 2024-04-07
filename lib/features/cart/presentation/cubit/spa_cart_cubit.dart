import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spa_salon/features/cart/domain/entities/cart_item/cart_item_model.dart';
import 'package:spa_salon/features/cart/domain/repositories/cart_repository.dart';

part 'spa_cart_state.dart';
part 'spa_cart_cubit.freezed.dart';

class SpaCartCubit extends Cubit<SpaCartState> {
  SpaCartCubit(this.repository) : super(const SpaCartState.initial());

  final CartRepository repository;

  Future<void> getCartList() async {
    emit(const SpaCartState.loading());
    final cartList = await repository.getCartList();
    emit(SpaCartState.loaded(cartList: cartList));
  }

  Future<void> deleteCartItem(int cartItemId) async {
    final loadedState = state as _Loaded;
    emit(const SpaCartState.loading());
    await repository.deleteCartItem(cartItemId);

    final newCartList = loadedState.cartList.toList();

    newCartList.removeWhere(
      (cartItem) => cartItem.id == cartItemId,
    );

    emit(SpaCartState.loaded(cartList: newCartList));
  }
}
