import 'package:clot/core/constants/texts.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/route/route_names.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_input.dart';

class SignInPassword extends StatelessWidget {
  const SignInPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              ClotTexts.singIn,
              style: TextStyle(
                fontSize: 32,
                color: ClotColors.black,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 20),
            AccountInput(hintText: ClotTexts.passwordText),
            const SizedBox(height: 20),
            AccountContinueButton(
              buttonText: ClotTexts.buttonContinueText,
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.homePage);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(ClotTexts.forgotPassword),
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.forgotPassword);
                  },
                  child: const Text(
                    ClotTexts.reset,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
