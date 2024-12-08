import 'package:flutter/cupertino.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/images.dart';
import '../../../core/constants/texts.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    super.key,
    required this.isSale,
  });
  final bool isSale;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {


  @override
  Widget build(BuildContext context) {
    bool isLiked = false;

    return Container(
      padding: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          // Stack to overlay like button on the image
          Stack(
            children: [
              // Product Image
              const Image(
                image: AssetImage(ClotImages.productImage),
              ),
              // Like Button
              Positioned(
                right: 10,
                top: 10,
                child: GestureDetector(
                  onTap: () {
                    print("pressed");
                    setState(() {
                      isLiked = !isLiked;
                    });
                  },
                  child: Icon(
                    isLiked ? CupertinoIcons.heart_fill: IconsaxPlusBroken.heart ,
                    color:ClotColors.black,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 159,
            decoration: const BoxDecoration(
              color: ClotColors.bgLight,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            padding: const EdgeInsets.only(left: 5, top: 10, bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  ClotTexts.jacket,
                  style: TextStyle(fontSize: 12, color: ClotColors.black),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Text(
                      '\$148.00',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: ClotColors.black,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      widget.isSale ? '\$148.00' : '',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: ClotColors.textLightBlack,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
