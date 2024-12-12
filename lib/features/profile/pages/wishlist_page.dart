import 'package:clot/core/constants/texts.dart';
import 'package:clot/core/route/route_names.dart';
import 'package:clot/features/profile/pages/wishlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../core/constants/colors.dart';
import '../widgets/address_detail.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: ClotColors.white,
          appBar: AppBar(
            toolbarHeight: 100,
            backgroundColor: ClotColors.white,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: IconButton.styleFrom(
                backgroundColor: ClotColors.bgLight,
              ),
              icon: const Icon(IconsaxPlusBroken.arrow_left_2),
              color: ClotColors.black,
              ),
            title: const Text(
              ClotTexts.wishlist,
              style: TextStyle(
                color: ClotColors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            centerTitle: true,
          ),
          body: Padding(
           padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  WishlistItemWidget(type: ClotTexts.myFavourite, onPressed: (){
                    Navigator.pushNamed(context, RouteNames.wishlistDetails, arguments: ClotTexts.myFavourite);
                  }),
                  WishlistItemWidget(type: ClotTexts.tShirt, onPressed: (){
                    Navigator.pushNamed(context, RouteNames.wishlistDetails, arguments: ClotTexts.tShirt);
                  }),
                ],
              ),
        ),
      ),
    ));
  }
}
