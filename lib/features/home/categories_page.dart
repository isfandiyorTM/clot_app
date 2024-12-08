import 'package:clot/features/home/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../core/constants/colors.dart';
import '../../core/constants/texts.dart';

class Categories extends StatelessWidget {
  Categories({super.key , required this.category});

  String? category;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: ClotColors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: IconButton.styleFrom(
                  backgroundColor: ClotColors.bgLight,
                ),
                icon: const Icon(IconsaxPlusBroken.arrow_left_2),
                color: ClotColors.black,
              ),
              const SizedBox(height: 20),
              Text(
                category!,
                style: const TextStyle(
                  fontSize: 24,
                  color: ClotColors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 290,
                child: GridView.count(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.6,
                  crossAxisCount: 2,
                  children: const [
                    ProductCard(
                      isSale: false,
                    ),
                    ProductCard(
                      isSale: true,
                    ),
                    ProductCard(
                      isSale: false,
                    ),
                    ProductCard(
                      isSale: true,
                    ),
                    ProductCard(
                      isSale: true,
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
