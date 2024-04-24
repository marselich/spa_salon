import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spa_salon/features/cart/domain/entities/cart_item/cart_item_model.dart';
import 'package:spa_salon/features/cart/presentation/cubit/spa_cart_cubit.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cartItem});

  final CartItemModel cartItem;

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<SpaCartCubit>(context);
    return ListTile(
      leading: Image.asset(
        cartItem.imageUrl,
        fit: BoxFit.cover,
        height: 60,
        width: 65,
      ),
      // leading: CachedNetworkImage( // TODO
      //   imageUrl: cartItem.imageUrl == ""
      //       ? "https://cs6.pikabu.ru/post_img/2015/07/04/10/1436029898_1190099444.jpg"
      //       : cartItem.imageUrl,
      //   fit: BoxFit.cover,
      //   height: 60,
      //   width: 65,
      // ),
      title: Text(cartItem.title),
      subtitle: Text("${cartItem.price}₽ ${cartItem.timePeriod}"),
      trailing: IconButton(
        icon: const Icon(Icons.delete_rounded),
        onPressed: () async {
          await cubit.deleteCartItem(cartItem.id);
        },
      ),
    );
  }
}
