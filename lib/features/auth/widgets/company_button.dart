import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class CompanyButton extends StatelessWidget {

  CompanyButton({
    super.key,
    required this.image,
    required this.text
  });

  String? image;
  String? text;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: double.infinity,
      height: 50,
      child: MaterialButton(
        onPressed: () {},
        color: ClotColors.bgLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child:  Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage(image!)),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Text(
                text!,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
