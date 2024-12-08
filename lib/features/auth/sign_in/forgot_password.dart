import 'package:clot/core/constants/texts.dart';
import 'package:clot/core/route/route_names.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_input.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30,top: 150),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
             ClotTexts.forgotPasswordHeading,
              style: TextStyle(
                  fontSize: 32,
                  color: Color(0xFF272727),
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 20),
            AccountInput(hintText: ClotTexts.emailAddressEnterText),
            const SizedBox(height: 20),
            AccountContinueButton(
              buttonText: ClotTexts.buttonContinueText, onPressed: (){
                Navigator.pushNamed(context, RouteNames.sentEmail);
            },
            ),
          ],
        ),
      ),
    );
  }
}