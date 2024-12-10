import 'package:clot/core/route/route_names.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class ExploreCategories extends StatelessWidget {
  ExploreCategories({
    super.key,
    required this.buttonText,
  });

  String? buttonText;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 200,
      child: MaterialButton(
        onPressed: (){
          Navigator.pushNamed(context, RouteNames.shopByCategories);
        },
        height: 60,
        color: ClotColors.purple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          buttonText!,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
