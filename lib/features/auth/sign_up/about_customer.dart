import 'package:clot/core/constants/texts.dart';
import 'package:clot/core/route/route_names.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../widgets/custom_button.dart';

class AboutCustomer extends StatefulWidget {
  @override
  _AboutCustomerState createState() => _AboutCustomerState();
}

class _AboutCustomerState extends State<AboutCustomer> {
  String selectedGender = ClotTexts.men;
  String selectedValue = ClotTexts.ageRange;

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
              ClotTexts.tellUsAboutYourSelf,
              style: TextStyle(
                  fontSize: 32,
                  color: ClotColors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 70),
            const Text(ClotTexts.whoDoYouShopFor),
            const SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              ButtonTheme(
                minWidth: 161,
                height: 52,
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      selectedGender =  ClotTexts.men;
                    });
                  },
                  color: selectedGender == ClotTexts.men
                      ?  ClotColors.purple
                      : ClotColors.bgLight,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    ClotTexts.men,
                    style: TextStyle(
                        color: selectedGender == ClotTexts.men
                            ? Colors.white
                            : Colors.black,
                        fontSize: 16),
                  ),
                ),
              ),
              ButtonTheme(
                minWidth: 161,
                height: 52,
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      selectedGender = ClotTexts.woman;
                    });
                  },
                  color: selectedGender == ClotTexts.woman
                      ? ClotColors.purple
                      : ClotColors.bgLight,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    ClotTexts.woman,
                    style: TextStyle(
                        color: selectedGender == ClotTexts.woman
                            ? Colors.white
                            : Colors.black,
                        fontSize: 16),
                  ),
                ),
              ),
            ]),
            const SizedBox(height: 50),
            const Text(ClotTexts.whoDoYouShopFor),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: ClotColors.bgLight,
                borderRadius: BorderRadius.circular(40),
              ),
              alignment: Alignment.center,
              child: DropdownButton<String>(
                value: selectedValue,
                underline: const SizedBox(),
                icon: const Padding(
                  padding: EdgeInsets.only(left: 200),
                  child: Icon(Icons.keyboard_arrow_down_outlined),
                ),
                style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFF272727),
                    fontWeight: FontWeight.bold),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue!;
                  });
                },
                items: <String>[ClotTexts.ageRange, ClotTexts.age18To25, ClotTexts.age26To35]
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 30.0 , right: 30 , bottom: 20 ,top: 15),
        child: AccountContinueButton(buttonText: ClotTexts.finish, onPressed: (){
          Navigator.pushNamed(context, RouteNames.homePage);
        },),
      ),
    );
  }
}
