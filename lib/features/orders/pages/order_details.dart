import 'package:clot/core/constants/colors.dart';
import 'package:clot/core/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import 'got_order_page.dart';

class OrderDetails extends StatelessWidget {
  OrderDetails({super.key , required this.order});
  String? order;

  @override
  Widget build(BuildContext context) {
    bool hasOrder = false;

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
          title:  Text(
            order!,
            style: const TextStyle(
              color: ClotColors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          centerTitle: true,
        ),
      ),
    );
  }
}