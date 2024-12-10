import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import '../../../core/constants/colors.dart';

class ProductCard extends StatefulWidget {
  final String image;
  final String name;
  final double price;
  bool isSale;

  ProductCard({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
    required this.isSale,
  }) : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image with Like Button
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.asset(
                  widget.image,
                  fit: BoxFit.cover,
                  // height: 200,
                  width: double.infinity,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isLiked = !isLiked;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Icon(
                      isLiked ? IconsaxPlusBold.heart: IconsaxPlusBroken.heart,
                      color: isLiked ? Colors.red : Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            color: ClotColors.bgLight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(fontSize: 12, color: ClotColors.black,fontWeight: FontWeight.w400),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        '\$${widget.price}',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: ClotColors.black,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        widget.isSale ? '\$158.00' : '',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: ClotColors.textLightBlack,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
