import 'package:clot/core/constants/colors.dart';
import 'package:clot/core/constants/images.dart';
import 'package:clot/core/constants/texts.dart';
import 'package:flutter/material.dart';

import '../../notification/widgets/custom_button.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(image: AssetImage(ClotImages.cart)),
          const SizedBox(height: 20),
           const Text(ClotTexts.emptyCart,style: TextStyle(fontSize: 24,color: ClotColors.black,fontWeight: FontWeight.w500),),
          const SizedBox(height: 20),
          ExploreCategories(
            buttonText: "Explore Categories",
          ),
        ],
      ),
    );
  }
}
