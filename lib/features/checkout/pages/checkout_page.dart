import 'package:clot/core/constants/colors.dart';
import 'package:clot/core/constants/texts.dart';
import 'package:clot/features/cart/pages/cart_items.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../core/route/route_names.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

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
            ClotTexts.checkout,
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
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap:(){},
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                          margin: const EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: ClotColors.bgLight,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    ClotTexts.shippingAddress,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: ClotColors.textLightBlack,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    ClotTexts.addShippingAddress,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: ClotColors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(IconsaxPlusBroken.arrow_right_3)
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap:(){},
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                          margin: const EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: ClotColors.bgLight,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    ClotTexts.paymentMethod,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: ClotColors.textLightBlack,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    ClotTexts.addPaymentMethod,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: ClotColors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(IconsaxPlusBroken.arrow_right_3)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Cost(
                cost: ClotTexts.subtotal,
                price: '\$200',
              ),
              Cost(
                cost: ClotTexts.shippingCost,
                price: '\$8.00',
              ),
              Cost(
                cost: ClotTexts.tax,
                price: '\$0.00',
              ),
              Cost(
                cost: ClotTexts.total,
                price: '\$208',
              ),
              const SizedBox(height: 50),
              ButtonTheme(
                minWidth: double.infinity,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.successfullyOrder);
                  },
                  height: 60,
                  color: ClotColors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$208',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ClotTexts.placeOrder,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
