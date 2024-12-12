import 'package:clot/core/constants/colors.dart';
import 'package:clot/core/constants/texts.dart';
import 'package:clot/core/route/route_names.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../core/constants/images.dart';
import '../widgets/profile_setting_widget.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ClotColors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(ClotImages.accountImage),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: ClotColors.bgLight,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ClotTexts.userFullName,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: ClotColors.black),
                          ),
                          SizedBox(height: 5),
                          Text(
                            ClotTexts.userEmail,
                            style: TextStyle(
                                color: ClotColors.textLightBlack,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 5),
                          Text(
                            ClotTexts.userPhoneNumber,
                            style: TextStyle(
                                color: ClotColors.textLightBlack,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Edit",
                            style: TextStyle(
                                color: ClotColors.purple,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                ProfileSetting(
                  settingText: ClotTexts.address,
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.addAddress);
                  },
                ),
                ProfileSetting(
                  settingText: ClotTexts.wishlist,
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.wishlist);
                  },
                ),
                ProfileSetting(
                  settingText: ClotTexts.payment,
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.payment);
                  },
                ),
                ProfileSetting(
                  settingText: ClotTexts.help,
                  onPressed: () {},
                ),
                ProfileSetting(
                  settingText: ClotTexts.support,
                  onPressed: () {},
                ),

                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    ClotTexts.signOut,
                    style: TextStyle(
                        color: ClotColors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
