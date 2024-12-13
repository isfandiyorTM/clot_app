import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/images.dart';
import '../../../core/constants/texts.dart';
import '../orders/widgets/custom_button.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ClotColors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: 100,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: IconButton.styleFrom(
              backgroundColor: ClotColors.bgLight,
              padding: const EdgeInsets.all(10),
            ),
            icon: const Icon(IconsaxPlusBroken.arrow_left_2,
                color: ClotColors.black),
          ),
          title: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal:5),
                  decoration: BoxDecoration(
                    color: ClotColors.bgLight,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(IconsaxPlusBroken.search_normal_1,color: ClotColors.black,),
                      suffixIcon: Icon(CupertinoIcons.xmark,color: ClotColors.black,),
                      contentPadding: EdgeInsets.only(top: 13),
                      hintText: ClotTexts.search,
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: ClotColors.black,
                      ),
                      border: InputBorder.none,
                    ),

                  ),
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(image: AssetImage(ClotImages.search)),
              const SizedBox(height: 30),
              const Text(
                ClotTexts.noSearchMatch,
                style: TextStyle(
                  color: ClotColors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ExploreCategories(
                buttonText: 'Explore Categories',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
