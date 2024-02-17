import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeSwiperItem extends StatelessWidget {
  const HomeSwiperItem({
    super.key,
    required this.imageUrl,
    required this.itemText,
  });

  final String imageUrl;
  final String itemText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: CachedNetworkImageProvider(
            imageUrl,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 80),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: 40,
            width: MediaQuery.of(context).size.width,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: theme.hoverColor.withOpacity(0.5),
              ),
              child: Center(
                child: Text(
                  itemText,
                  style: GoogleFonts.ptSans(
                    fontSize: 16,
                    color: Colors.white,
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
