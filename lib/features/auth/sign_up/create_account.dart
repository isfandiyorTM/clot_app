import 'package:clot/core/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../core/constants/colors.dart';
import '../../../core/route/route_names.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_input.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 130, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: IconButton.styleFrom(
                  backgroundColor: ClotColors.bgLight,
                ),
                icon: const Icon(IconsaxPlusBroken.arrow_left_2),
                color: ClotColors.black,
              ),
              const SizedBox(height: 20,),
              const Text(
                ClotTexts.createAccountHeading,
                style: TextStyle(
                    fontSize: 32,
                    color: Color(0xFF272727),
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 20),
              AccountInput(hintText: ClotTexts.firstNameText),
              const SizedBox(height: 15),
              AccountInput(hintText: ClotTexts.lastNameText),
              const SizedBox(height: 15),
              AccountInput(hintText: ClotTexts.emailAddressText),
              const SizedBox(height: 15),
              AccountInput(hintText: ClotTexts.passwordText),
              const SizedBox(height: 30),
              AccountContinueButton( buttonText: ClotTexts.buttonContinueText, onPressed: (){
                Navigator.pushNamed(context, RouteNames.aboutCustomer);
              },),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(ClotTexts.alreadyHaveAnAccount),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteNames.signIn);
                    },
                    child: const Text(
                      ClotTexts.singIn,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
