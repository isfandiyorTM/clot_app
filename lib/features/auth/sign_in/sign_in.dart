import 'package:clot/core/constants/images.dart';
import 'package:clot/core/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../core/constants/colors.dart';
import '../../../core/route/route_names.dart';
import '../widgets/company_button.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_input.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 200, left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                ClotTexts.singIn,
                style: TextStyle(
                    fontSize: 32,
                    color: ClotColors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              AccountInput(hintText: ClotTexts.emailAddressText),
              const SizedBox(height: 20),
              AccountContinueButton(
                  buttonText: ClotTexts.buttonContinueText,
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.signInPassword);
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(ClotTexts.dontHaveAccount),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteNames.createAccount);
                    },
                    child: const Text(
                      ClotTexts.createOne,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 100),
              CompanyButton(
                  image: ClotImages.apple, text: ClotTexts.buttonAppleText),
              const SizedBox(height: 20),
              CompanyButton(
                  image: ClotImages.google, text: ClotTexts.buttonGoogleText),
              const SizedBox(height: 20),
              CompanyButton(
                  image: ClotImages.facebook,
                  text: ClotTexts.buttonFacebookText),
            ],
          ),
        ),
      ),
    );
  }
}
