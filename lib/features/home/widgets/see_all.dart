
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/texts.dart';

class SeeAll extends StatelessWidget {
  SeeAll({
    super.key,
    required this.type,
    required this.onPressed,
  });

  String? type;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          type!,
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: ClotColors.black),
        ),
        TextButton(
          onPressed: onPressed,
          child: const Text(
            ClotTexts.seeAll,
            style: TextStyle(
                fontSize: 16,
                color: ClotColors.black,
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
