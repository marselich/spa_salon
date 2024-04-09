import 'package:get_it/get_it.dart';
import 'package:spa_salon/core/data/spa_database_client.dart';
import 'package:spa_salon/core/utils/enums/cart_item_type.dart';
import 'package:spa_salon/features/cart/domain/entities/cart_item/cart_item_model.dart';
import 'package:spa_salon/features/cart/domain/repositories/cart_repository.dart';
import 'package:sqflite/sqflite.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';
import 'package:url_launcher/url_launcher.dart';

class CartRepositoryImpl implements CartRepository {
  @override
  Future<void> insertCartItemInDatabase({
    required String title,
    required String imageUrl,
    required double price,
    required String? timePeriod,
    required int count,
    required CartItemType type,
  }) async {
    final db = GetIt.I.get<Database>();
    await db.insert(
      SpaDatabaseClient.CART_NAME,
      {
        'title': title,
        'image_url': imageUrl,
        'price': price,
        'time_period': timePeriod,
        'count': count,
        'type': type.index,
      },
    );
  }

  @override
  Future<List<CartItemModel>> getCartList() async {
    final db = GetIt.I.get<Database>();
    final cartListDb =
        await db.rawQuery("SELECT * FROM ${SpaDatabaseClient.CART_NAME}");
    return cartListDb
        .map((cartItem) => CartItemModel.fromDatabaseRow(cartItem))
        .toList();
  }

  @override
  Future<void> deleteCartItem(int cartItemId) async {
    final db = GetIt.I.get<Database>();
    await db.delete(
      SpaDatabaseClient.CART_NAME,
      where: "id = ?",
      whereArgs: [cartItemId],
    );
  }

  @override
  Future<void> deleteAllCartItems() async {
    final db = GetIt.I.get<Database>();
    await db.delete(
      SpaDatabaseClient.CART_NAME,
    );
  }

  @override
  Future<void> placeOrderViaWhatsApp(String message) async {
    final link = WhatsAppUnilink(
      phoneNumber: '+79990595839',
      text: message,
    );
    // Convert the WhatsAppUnilink instance to a Uri.
    // The "launch" method is part of "url_launcher".
    await launchUrl(link.asUri());
  }
}
