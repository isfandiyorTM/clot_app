import 'package:clot/core/constants/texts.dart';
import 'package:clot/features/profile/widgets/payment_detail.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../core/constants/colors.dart';
import '../widgets/address_detail.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
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
        title: const Text(
          ClotTexts.payment,
          style: TextStyle(
            color: ClotColors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                ClotTexts.cards,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: ClotColors.black),
              ),
              const SizedBox(height: 20),

              PaymentDetail(cardNumber: '12345678'),
              PaymentDetail(cardNumber: '42343234'),

              const SizedBox(height: 20),
              const Text(
                ClotTexts.paypal,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: ClotColors.black),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: ClotColors.bgLight,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      ClotTexts.userEmail,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: ClotColors.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(IconsaxPlusBroken.arrow_right_3),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
