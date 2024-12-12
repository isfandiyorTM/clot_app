import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../core/constants/colors.dart';

class NotificationMessage extends StatelessWidget {
  NotificationMessage({
    super.key,
    required this.message
  });
  String? message;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: ClotColors.bgLight,
        borderRadius: BorderRadius.circular(10),
      ),
      child:  Row(
        children: [
          const Icon(
            IconsaxPlusBroken.notification_bing,
            color: ClotColors.black,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            message!,
            style: const TextStyle(
              fontSize: 12,
              color: ClotColors.black,
            ),
          )
        ],
      ),
    );
  }
}