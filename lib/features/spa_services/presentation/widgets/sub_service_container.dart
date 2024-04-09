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
    return BlocListener<SpaSubservicesCubit, SpaSubservicesState>(
      bloc: _cubit,
      listener: (ctx, state) {
        state.maybeWhen(
          showSubserviceSnackBar: (text) async {
            final snackBar = SnackBar(
              content: Text(text),
              duration: Durations.short2,
            );
            AutoRouter.of(context).pop();
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
            vertical: 16,
            horizontal: 8,
          ),
          child: Column(
            children: [
              CachedNetworkImage(
                imageUrl: widget.subservice.imageUrl == ""
                    ? "https://cs6.pikabu.ru/post_img/2015/07/04/10/1436029898_1190099444.jpg"
                    : widget.subservice.imageUrl,
              ),
              const SizedBox(height: 16),
              Center(
                child: Text(widget.subservice.title),
              ),
              const SizedBox(height: 8),
              SegmentedButton(
                segments: widget.subservice.prices.map((priceItem) {
                  return ButtonSegment(
                    value: priceItem,
                    label: Column(
                      children: [
                        Text("${priceItem.price.toString()} ₽"),
                        Text("За ${priceItem.timePeriod}"),
                      ],
                    ),
                  );
                }).toList(),
                selected: {priceView},
                onSelectionChanged: (priceItem) {
                  setState(() {
                    priceView = priceItem.first;
                    finalPrice = priceItem.first?.price as double;
                    finalTimePeriod = priceItem.first?.timePeriod;
                  });
                },
                showSelectedIcon: false,
                style: const ButtonStyle(
                  alignment: Alignment.center,
                  padding: MaterialStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  textStyle: MaterialStatePropertyAll(
                    TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              widget.subservice.descriptions.isNotEmpty
                  ? Text(widget.subservice.descriptions[0])
                  : const Text(""),
              const SizedBox(height: 16),
              const VerticalDivider(),
              const SizedBox(height: 16),
              widget.subservice.descriptions.length > 1
                  ? SizedBox(
                      height: 200,
                      child: ListView.builder(
                        itemBuilder: (context, i) {
                          return Text(
                              "\u2022 ${widget.subservice.descriptions[i + 1]}");
                        },
                        itemCount: widget.subservice.descriptions.length - 1,
                      ),
                    )
                  : Container(),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () async {
                  await _cubit.createCartItem(
                    title: "${widget.serviceTitle} ${widget.subservice.title}",
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
      ),
    );
  }
}
