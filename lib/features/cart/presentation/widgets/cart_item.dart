import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spa_salon/features/cart/domain/entities/cart_item/cart_item_model.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cartItem});

  final CartItemModel cartItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CachedNetworkImage(
        imageUrl: cartItem.imageUrl,
      ),
      title: Text(cartItem.title),
      subtitle: Text(cartItem.priceTime),
      trailing: IconButton(
        icon: const Icon(Icons.delete_rounded),
        onPressed: () {},
      ),
    );
  }
}
