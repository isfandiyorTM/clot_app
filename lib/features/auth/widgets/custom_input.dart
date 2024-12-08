import 'package:clot/core/constants/colors.dart';
import 'package:flutter/material.dart';

class AccountInput extends StatelessWidget {
  String? hintText;

  AccountInput({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ClotColors.bgLight,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(20),
          hintStyle: const TextStyle(
            fontSize: 16,
            color: ClotColors.textLightBlack,
            letterSpacing: 0.5,
          ),
        ),
      ),
    );
  }
}