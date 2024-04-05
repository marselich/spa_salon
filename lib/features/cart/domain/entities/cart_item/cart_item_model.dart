import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spa_salon/core/utils/enums/cart_item_type.dart';

part 'cart_item_model.freezed.dart';
part 'cart_item_model.g.dart';

@freezed
class CartItemModel with _$CartItemModel {
  const CartItemModel._();

  factory CartItemModel({
    @Default(0) int id,
    @Default("") String title,
    @Default("") String imageUrl,
    @Default("") String priceTime,
    @Default(0) int count,
    @Default(CartItemType.service) CartItemType type,
  }) = _CartItemModel;

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);

  factory CartItemModel.fromDatabaseRow(Map<String, Object?> json) {
    return CartItemModel(
      id: json["id"] as int,
      title: json["title"] as String,
      imageUrl: json["image_url"] as String,
      priceTime: json["price_time"] as String,
      count: json["count"] as int,
      type: CartItemType.values[json["type"] as int],
    );
  }
}
