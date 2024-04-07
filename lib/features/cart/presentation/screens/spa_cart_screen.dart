import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Корзина"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: BlocProvider<SpaCartCubit>(
          create: (context) => _cubit,
          child: BlocBuilder<SpaCartCubit, SpaCartState>(
            builder: (context, state) {
              return state.maybeWhen(
                loaded: (cartList) {
                  return ListView.builder(
                    itemBuilder: (context, i) {
                      return CartItem(cartItem: cartList[i]);
                    },
                    itemCount: cartList.length,
                  );
                },
                loading: () => const SpaLoadingScreen(),
                orElse: () => Container(),
              );
            },
          ),
        ),
      ),
    );
  }
}
