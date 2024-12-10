import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class Categorybutton extends StatelessWidget {
  Categorybutton({
    super.key,
    required this.buttonImage,
    required this.buttonText,
    required this.onPressed,
  });

  String? buttonImage;
  String? buttonText;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.only(right: 10),
        child: Column(
          children: [
            Image(
              image: AssetImage(buttonImage!),
              width: 56,
              height: 56,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              buttonText!,
              style: const TextStyle(
                fontSize: 12,
                color: ClotColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
