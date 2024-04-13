import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:spa_salon/core/utils/enums/cart_item_type.dart';
import 'package:spa_salon/features/cart/presentation/cubit/spa_cart_cubit.dart';
import 'package:spa_salon/features/spa_services/domain/entities/subservice/subservice_model.dart';
import 'package:spa_salon/features/spa_services/domain/entities/subservice_price/subservice_price_model.dart';
import 'package:spa_salon/features/spa_services/presentation/cubit/spa_subservices/spa_subservices_cubit.dart';

class SubserviceContainer extends StatefulWidget {
  const SubserviceContainer({
    super.key,
    required this.subservice,
    required this.serviceTitle,
  });

  final String serviceTitle;
  final SubserviceModel subservice;

  @override
  State<SubserviceContainer> createState() => _SubserviceContainerState();
}

class _SubserviceContainerState extends State<SubserviceContainer> {
  final SpaSubservicesCubit _cubit = GetIt.I.get<SpaSubservicesCubit>();

  SubservicePriceModel? priceView;
  double finalPrice = 0;
  String? finalTimePeriod = "";

  @override
  void initState() {
    priceView = widget.subservice.prices.first;
    finalPrice = priceView?.price as double;
    finalTimePeriod = priceView?.timePeriod;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocListener<SpaSubservicesCubit, SpaSubservicesState>(
      bloc: _cubit,
      listener: (ctx, state) {
        state.maybeWhen(
          showSubserviceSnackBar: (text) async {
            final snackBar = SnackBar(
              content: Text(text),
              duration: Durations.long4,
            );
            AutoRouter.of(context).maybePop();
            ScaffoldMessenger.of(context).showSnackBar(
              snackBar,
            );
            await GetIt.I.get<SpaCartCubit>().getCartList();
          },
          orElse: () {},
        );
      },
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 0,
          ),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    // padding: const EdgeInsets.only(bottom: 0),
                    child: CachedNetworkImage(
                      imageUrl: widget.subservice.imageUrl == ""
                          ? "https://cs6.pikabu.ru/post_img/2015/07/04/10/1436029898_1190099444.jpg"
                          : widget.subservice.imageUrl,
                      fit: BoxFit.cover,
                      height: 300,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: -1,
                    child: Container(
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        color: theme.colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimary,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              widget.subservice.title,
                              style: theme.textTheme.titleLarge?.copyWith(
                                color: theme.colorScheme.secondary,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          const SizedBox(height: 2),
                          widget.subservice.descriptions.isNotEmpty
                              ? Text(
                                  widget.subservice.descriptions[0],
                                  style: theme.textTheme.titleMedium?.copyWith(
                                    color: Colors.black54,
                                    fontSize: 16,
                                  ),
                                )
                              : const Text(""),
                          const SizedBox(height: 16),
                          widget.subservice.descriptions.length > 1
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: widget.subservice.descriptions
                                      .map((desc) {
                                    if (desc !=
                                        widget.subservice.descriptions[0]) {
                                      return Text(
                                        "\u2022 $desc",
                                        style: theme.textTheme.titleMedium
                                            ?.copyWith(
                                          color: Colors.black54,
                                          fontSize: 16,
                                        ),
                                      );
                                    }
                                    return Container();
                                  }).toList(),
                                )
                              : Container(),
                          // ? SizedBox(
                          //     height: 100,
                          //     child: ListView.builder(
                          //       itemBuilder: (context, i) {
                          //         return Text(
                          //           "\u2022 ${widget.subservice.descriptions[i + 1]}",
                          //           style: theme.textTheme.titleMedium
                          //               ?.copyWith(
                          //             color: Colors.black54,
                          //             fontSize: 16,
                          //           ),
                          //         );
                          //       },
                          //       itemCount:
                          //           widget.subservice.descriptions.length -
                          //               1,
                          //     ),
                          //   )
                          // : Container(),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Время:",
                                style: theme.textTheme.titleMedium?.copyWith(
                                  color: theme.colorScheme.secondary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                              const SizedBox(width: 16),
                              SegmentedButton(
                                segments:
                                    widget.subservice.prices.map((priceItem) {
                                  return ButtonSegment(
                                    value: priceItem,
                                    label: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        // Text("${priceItem.price.toString()} ₽"),
                                        Text(
                                          priceItem.timePeriod,
                                          style: theme.textTheme.labelLarge
                                              ?.copyWith(
                                            color: theme.colorScheme.secondary,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                                selected: {priceView},
                                onSelectionChanged: (priceItem) {
                                  setState(() {
                                    priceView = priceItem.first;
                                    finalPrice =
                                        priceItem.first?.price as double;
                                    finalTimePeriod =
                                        priceItem.first?.timePeriod;
                                  });
                                },
                                showSelectedIcon: false,
                                style: const ButtonStyle(
                                  alignment: Alignment.center,
                                  padding: MaterialStatePropertyAll(
                                    EdgeInsets.symmetric(
                                        horizontal: 0, vertical: 0),
                                  ),
                                  // textStyle: MaterialStatePropertyAll(
                                  //   theme.textTheme.labelLarge?.copyWith(
                                  //     color: theme.colorScheme.secondary,
                                  //     fontSize: 18,
                                  //   ),
                                  // ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${finalPrice.toString()} ₽",
                            style: theme.textTheme.titleMedium?.copyWith(
                              color: theme.colorScheme.secondary,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          FilledButton(
                            onPressed: () async {
                              await _cubit.createCartItem(
                                title:
                                    "${widget.serviceTitle} ${widget.subservice.title}",
                                imageUrl: widget.subservice.imageUrl,
                                price: finalPrice,
                                timePeriod: finalTimePeriod,
                                count: 1,
                                type: CartItemType.service,
                              );
                            },
                            child: const Text("Добавить в корзину"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
