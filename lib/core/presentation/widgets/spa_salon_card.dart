import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SpaSalonCard extends StatelessWidget {
  const SpaSalonCard({
    super.key,
    required this.imageUrl,
    required this.itemText,
    required this.priceText,
    required this.onTap,
  });

  final String imageUrl;
  final String itemText;
  final String priceText;
  final VoidCallback onTap;

  // @override
  // Widget build(BuildContext context) {
  //   final theme = Theme.of(context);
  //   return Card(
  //     child: InkWell(
  //       borderRadius: BorderRadius.circular(15),
  //       onTap: onTap,
  //       splashColor: theme.highlightColor,
  //       child: Ink(
  //         height: 200,
  //         width: 50,
  //         // decoration: BoxDecoration(
  //         //   borderRadius: BorderRadius.circular(15),
  //         //   image: DecorationImage(
  //         //     image: CachedNetworkImageProvider(
  //         //       imageUrl,
  //         //     ),
  //         //     fit: BoxFit.cover,
  //         //   ),
  //         //),
  //         child: Column(
  //           children: [
  //             Expanded(
  //               child: CachedNetworkImage(
  //                 imageUrl: imageUrl,
  //                 fit: BoxFit.cover,
  //               ),
  //             ),
  //             SizedBox(
  //               height: 50,
  //               child: ListTile(
  //                 title: Text(itemText),
  //                 subtitle: Text(priceText),
  //                 trailing: const FaIcon(FontAwesomeIcons.cartPlus),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: onTap,
        splashColor: theme.highlightColor,
        child: Ink(
          height: 200,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: CachedNetworkImageProvider(
                imageUrl,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 50,
              // width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          itemText,
                          style: theme.textTheme.titleMedium,
                          maxLines: 1,
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        width: 80,
                        child: Chip(
                          label: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Text(
                              priceText,
                            ),
                          ),
                          labelStyle: theme.textTheme.labelMedium,
                          backgroundColor: theme.colorScheme.primary,
                          side: BorderSide.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
