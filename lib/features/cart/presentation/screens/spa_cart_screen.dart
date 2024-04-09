import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:spa_salon/core/presentation/widgets/spa_loading_screen.dart';
import 'package:spa_salon/features/cart/presentation/cubit/spa_cart_cubit.dart';
import 'package:spa_salon/features/cart/presentation/widgets/cart_item.dart';

@RoutePage()
class SpaCartScreen extends StatefulWidget {
  const SpaCartScreen({super.key});

  @override
  State<SpaCartScreen> createState() => _SpaCartScreenState();
}

class _SpaCartScreenState extends State<SpaCartScreen> {
  final SpaCartCubit _cubit = GetIt.I.get<SpaCartCubit>();

  @override
  void initState() {
    _cubit.getCartList();
    super.initState();
  }

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    await _cubit.getCartList();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Корзина"),
      ),
      body: BlocProvider<SpaCartCubit>(
        create: (context) => _cubit,
        child: BlocBuilder<SpaCartCubit, SpaCartState>(
          builder: (context, state) {
            return state.maybeWhen(
              loaded: (cartList, totalAmount) {
                return cartList.isNotEmpty
                    ? Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 100,
                            ),
                            child: ListView.builder(
                              itemBuilder: (context, i) {
                                return CartItem(cartItem: cartList[i]);
                              },
                              itemCount: cartList.length,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                color: theme.primaryColor.withOpacity(0.3),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "$totalAmount₽",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                  FilledButton(
                                    onPressed: () async {
                                      await _cubit.checkout(
                                          cartList, totalAmount);
                                    },
                                    child: const Text("Оформить заказ"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    : Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const FaIcon(
                              FontAwesomeIcons.solidFaceSadCry,
                              size: 170,
                              color: Colors.black26,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              "Корзина пуста",
                              style: theme.textTheme.titleLarge?.copyWith(
                                color: Colors.black26,
                                fontSize: 26,
                              ),
                            ),
                          ],
                        ),
                      );
              },
              loading: () => const SpaLoadingScreen(),
              orElse: () => Container(),
            );
          },
        ),
      ),
    );
  }
}
