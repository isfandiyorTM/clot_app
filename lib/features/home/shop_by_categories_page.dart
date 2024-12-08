import 'package:clot/core/constants/texts.dart';
import 'package:clot/core/route/route_names.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../core/constants/colors.dart';
import '../../core/constants/images.dart';

class ShopByCategoriesPage extends StatelessWidget {
  const ShopByCategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ClotColors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(
                  backgroundColor: ClotColors.bgLight,
                ),
                icon: const Icon(IconsaxPlusBroken.arrow_left_2),
                color: ClotColors.black,
              ),
              const SizedBox(height: 20),
              const Text(
                ClotTexts.shopByCategories,
                style: TextStyle(
                  fontSize: 24,
                  color: ClotColors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              ShopByCategoryButton(
                category_name: ClotTexts.hoodies,
                category_image: ClotImages.categoryHoodies,
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    RouteNames.categories,
                    arguments: "Hoodies",
                  );
                },
              ),
              ShopByCategoryButton(
                category_name: ClotTexts.accessories,
                category_image: ClotImages.categoryAccessories,
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    RouteNames.categories,
                    arguments: "Accessories",
                  );
                },
              ),
              ShopByCategoryButton(
                category_name: ClotTexts.shorts,
                category_image: ClotImages.categoryShorts,
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    RouteNames.categories,
                    arguments: "Shorts",
                  );
                },
              ),
              ShopByCategoryButton(
                category_name: ClotTexts.shoes,
                category_image: ClotImages.categoryShoes,
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    RouteNames.categories,
                    arguments: "Shoes",
                  );
                },
              ),
              ShopByCategoryButton(
                category_name: ClotTexts.bag,
                category_image: ClotImages.categoryBag,
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    RouteNames.categories,
                    arguments: "Bags",
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShopByCategoryButton extends StatelessWidget {
  ShopByCategoryButton({
    super.key,
    required this.category_name,
    required this.category_image,
    required this.onPressed,
  });

  String? category_name;
  String? category_image;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: const BoxDecoration(
            color: ClotColors.bgLight,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(category_image!),
                width: 40,
                height: 40,
              ),
              Text(
                category_name!,
                style: const TextStyle(
                    fontSize: 16,
                    color: ClotColors.black,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
