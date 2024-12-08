import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../core/constants/colors.dart';

class CustomInput extends StatelessWidget {
  CustomInput({super.key, required this.hintText});

  String? hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: ClotColors.bgLight,
        borderRadius: BorderRadius.circular(100),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText!,
          border: InputBorder.none,
          prefixIcon: const Icon(
            IconsaxPlusBroken.search_normal_1,
            color: ClotColors.black,
          ),
          contentPadding: const EdgeInsets.only(left: 60, top: 12),
          hintStyle: const TextStyle(
              fontSize: 16,
              color: ClotColors.black,
              fontWeight: FontWeight.w400),
          alignLabelWithHint: true,
        ),
      ),
    );
  }
}
