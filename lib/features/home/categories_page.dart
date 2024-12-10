import 'package:clot/features/home/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/images.dart';
import '../../core/constants/texts.dart';

class Categories extends StatelessWidget {
  String? category;

  Categories({required this.category});
  final List<Map<String, dynamic>> products = [
    {
      'image': ClotImages.productImage4,
      'name': "Men's Ice-Dye Pullover Hoodie",
      'price': 128.97,
      'isSale': true,
    },
    {
      'image': ClotImages.productImage5,
      'name': "Men's Workwear Jacket",
      'price': 128.97,
      'isSale': false,
    },
    {
      'image': ClotImages.productImage2,
      'name': "Max Cirro Men's Slides",
      'price': 55.97,
      'isSale': true,
    },
    {
      'image': ClotImages.productImage,
      'name': "Men's Harrington Jacket",
      'price': 148.00,
      'isSale': false,
    },
    {
      'image': ClotImages.productImage3,
      'name': "Woman's Fleece Pullover Hoodie",
      'price': 100.00,
      'isSale': false,
    },
    {
      'image': ClotImages.productImage,
      'name': "Men's Harrington Jacket",
      'price': 148.00,
      'isSale': false,
    },
    {
      'image': ClotImages.productImage2,
      'name': "Max Cirro Men's Slides",
      'price': 55.97,
      'isSale': true,
    },
    {
      'image': ClotImages.productImage3,
      'name': "Woman's Fleece Pullover Hoodie",
      'price': 100.00,
      'isSale': false,
    },
    {
      'image': ClotImages.productImage4,
      'name': "Men's Ice-Dye Pullover Hoodie",
      'price': 128.97,
      'isSale': true,
    },
    {
      'image': ClotImages.productImage5,
      'name': "Men's Workwear Jacket",
      'price': 128.97,
      'isSale': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ClotColors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
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
              Expanded(
                child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.585, // Adjust the height/width ratio of items
                  ),
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return ProductCard(
                      image: product['image'],
                      name: product['name'],
                      price: product['price'],
                      isSale: product['isSale'],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
