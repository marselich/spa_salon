import 'package:spa_salon/core/utils/enums/cart_item_type.dart';
import 'package:spa_salon/features/cart/domain/entities/cart_item/cart_item_model.dart';

abstract class CartRepository {
  Future<void> insertCartItemInDatabase({
    required String title,
    required String imageUrl,
    required double price,
    required String? timePeriod,
    required int count,
    required CartItemType type,
  });

  Future<List<CartItemModel>> getCartList();

  Future<void> deleteCartItem(int cartItemId);
  Future<void> placeOrderViaWhatsApp(String message);
  Future<void> deleteAllCartItems();
}
