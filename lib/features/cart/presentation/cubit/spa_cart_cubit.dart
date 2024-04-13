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
    double totalAmount = 0;
    for (var cartItem in cartList) {
      totalAmount += cartItem.price;
    }
    emit(SpaCartState.loaded(cartList: cartList, totalAmount: totalAmount));
  }

  Future<void> deleteCartItem(int cartItemId) async {
    final loadedState = state as _Loaded;
    // emit(const SpaCartState.loading());
    await repository.deleteCartItem(cartItemId);

    final newCartList = loadedState.cartList.toList();

    final deleteCartItem = newCartList.lastWhere(
      (cartItem) => cartItem.id == cartItemId,
    );

    newCartList.remove(deleteCartItem);

    // newCartList.removeWhere(
    //   (cartItem) => cartItem.id == cartItemId,
    // );
    double newTotalAmount = loadedState.totalAmount - deleteCartItem.price;

    emit(SpaCartState.loaded(
      cartList: newCartList,
      totalAmount: newTotalAmount,
    ));
  }

  Future<void> checkout(
      List<CartItemModel> cartList, double totalAmount) async {
    emit(const SpaCartState.loading());
    String message = "Здравствуйте, мне бы хотелось записаться на:\n";
    for (var cartItem in cartList) {
      message +=
          "${cartItem.title} ${cartItem.price}₽ ${cartItem.timePeriod}\n";
    }
    message += "На итоговую сумму: $totalAmount₽\n";
    message += "Когда и во сколько я могу прийти?\n";
    await repository.placeOrderViaWhatsApp(message);
    emit(const SpaCartState.loaded(
      cartList: [],
      totalAmount: 0,
    ));
    await repository.deleteAllCartItems();
  }
}
