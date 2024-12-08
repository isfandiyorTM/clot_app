import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class AccountContinueButton extends StatelessWidget {
  AccountContinueButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  String? buttonText;
  VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: double.infinity,
      child: MaterialButton(
        onPressed: onPressed,
        height: 49,
        color: ClotColors.purple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          buttonText!,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
