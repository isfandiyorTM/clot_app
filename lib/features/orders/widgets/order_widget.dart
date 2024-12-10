import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../core/constants/colors.dart';

class OrderWidget extends StatelessWidget {
  OrderWidget({super.key, required this.message , required this.onPressed});
  VoidCallback onPressed;
  String? message;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(bottom: 20),
        color: ClotColors.bgLight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(
                  IconsaxPlusBroken.notification_bing,
                  color: ClotColors.black,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      message!,
                      style: const TextStyle(
                        fontSize: 16,
                        color: ClotColors.black,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const Text(
                      '4 items',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: ClotColors.textLightBlack,),
                    )
                  ],
                ),
              ],
            ),
            const Icon(
              IconsaxPlusBroken.arrow_right_3,
              color: ClotColors.black,
            ),
          ],
        ),
      ),
    );
  }
}
