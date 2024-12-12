import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../core/constants/colors.dart';

class ProfileSetting extends StatelessWidget {
  ProfileSetting(
      {super.key, required this.settingText, required this.onPressed});

  String? settingText;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
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
          Text(
            settingText!,
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: ClotColors.black),
          ),
          IconButton(
            onPressed: onPressed,
            icon: const Icon(IconsaxPlusBroken.arrow_right_3),
          ),
        ],
      ),
    );
  }
}
