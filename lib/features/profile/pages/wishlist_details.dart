import 'package:clot/core/constants/colors.dart';
import 'package:clot/core/constants/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../core/constants/images.dart';
import '../../home/widgets/product_card.dart';


class WishlistDetails extends StatelessWidget {
  WishlistDetails({super.key, required this.type});

  String? type;

  @override
  Widget build(BuildContext context) {
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


    return SafeArea(
      child: Scaffold(
        backgroundColor: ClotColors.white,
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: ClotColors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: IconButton.styleFrom(
              backgroundColor: ClotColors.bgLight,
            ),
            icon: const Icon(IconsaxPlusBroken.arrow_left_2),
            color: ClotColors.black,
          ),
          title: Text(
            type!,
            style: const TextStyle(
              color: ClotColors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Expanded(
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

        ),
      ),
    );
  }
}
