import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/images.dart';
import '../../../core/constants/texts.dart';
import '../widgets/custom_button.dart';

class NoOrderPage extends StatelessWidget {
  const NoOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage(ClotImages.order)),
            const SizedBox(height: 30),
            const Text(
              ClotTexts.noOrders,
              style: TextStyle(
                color: ClotColors.black,
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 30),
            ExploreCategories(
              buttonText: 'Explore Categories',
            ),
          ],
        ),
      ),
    );
  }
}
