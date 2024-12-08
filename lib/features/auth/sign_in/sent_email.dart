import 'package:clot/core/constants/images.dart';
import 'package:clot/core/constants/texts.dart';
import 'package:clot/core/route/route_names.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

class SentEmail extends StatelessWidget {
  const SentEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(image: AssetImage(ClotImages.sentEmailImage),),
            const SizedBox(height: 20),
            const Text(
              ClotTexts.sentEmailText,
              style: TextStyle(
                  fontSize: 32,
                  color: Color(0xFF272727),
                  fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            AccountContinueButton(
              buttonText: ClotTexts.returnToLogin,
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.signIn);
              },
            ),
          ],
        ),
      ),
    );
  }
}
