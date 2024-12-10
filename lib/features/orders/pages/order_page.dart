import 'package:clot/core/constants/colors.dart';
import 'package:clot/core/constants/texts.dart';
import 'package:flutter/material.dart';

import 'got_order_page.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool hasOrder = false;

    return SafeArea(
      child: Scaffold(
        backgroundColor: ClotColors.white,
        appBar: AppBar(
          backgroundColor: ClotColors.white,
          leading: const SizedBox(),
          title: const Text(
            ClotTexts.orders,
            style: TextStyle(
              color: ClotColors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          centerTitle: true,
        ),
        body:const GotOrderPage(),
      ),
    );
  }
}
