import 'package:clot/core/constants/colors.dart';
import 'package:clot/core/constants/texts.dart';
import 'package:clot/features/cart/pages/cart_items.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';



class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: ClotColors.white,
        appBar: AppBar(
          backgroundColor: ClotColors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: IconButton.styleFrom(
              backgroundColor: ClotColors.bgLight,
              padding: const EdgeInsets.all(10),
            ),
            icon: const Icon(IconsaxPlusBroken.arrow_left_2,
                color: ClotColors.black),
          ),
          title: const Text(
            ClotTexts.cart,
            style: TextStyle(
              color: ClotColors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          centerTitle: true,
          toolbarHeight: 80,
        ),
        // body: const EmptyCart(),
        body: const CartItems(),
      ),

    );
  }
}
