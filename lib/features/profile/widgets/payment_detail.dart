import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/images.dart';

class PaymentDetail extends StatelessWidget {
  PaymentDetail({super.key, required this.cardNumber});

  String? cardNumber;

  @override
  Widget build(BuildContext context) {
    String maskCardNumber(String cardNumber) {
      if (cardNumber.length >= 4) {
        String maskedPart = '****';
        String remainingPart = cardNumber.substring(4);
        // Har 4 raqamdan bo'laklarga ajratish
        return '$maskedPart ${remainingPart.replaceAllMapped(RegExp(r'.{4}'), (match) => '${match.group(0)} ')}'.trim();
      }
      return cardNumber;
    }

    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: ClotColors.bgLight,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                maskCardNumber(cardNumber!),
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: ClotColors.black,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              const SizedBox(width: 10),
              const Image(image: AssetImage(ClotImages.card))
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(IconsaxPlusBroken.arrow_right_3),
          )
        ],
      ),
    );
  }
}
