import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/images.dart';
import '../../../core/constants/texts.dart';
import '../widgets/custom_button.dart';

class NoNotificationPage extends StatelessWidget {
  const NoNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage(ClotImages.notification)),
            const SizedBox(height: 30),
            const Text(
              ClotTexts.notification,
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
