import 'package:clot/core/constants/colors.dart';
import 'package:clot/core/constants/images.dart';
import 'package:clot/core/constants/texts.dart';
import 'package:clot/core/route/route_names.dart';
import 'package:flutter/material.dart';

class SuccessullOrderPage extends StatelessWidget {
  const SuccessullOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ClotColors.purple,
      body:  Column(
        children: [
          const Expanded(child: Image(image: AssetImage(ClotImages.orderPlacedSuccessfully))),
          Container(
            padding: const EdgeInsets.only(top: 100,bottom: 30,left: 20,right: 20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
              color: ClotColors.white,
            ),
            child: Column(
              children: [
                const Text(
                  ClotTexts.orderPlacedSuccessfully,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: ClotColors.black,
                  ),
                ),
                const SizedBox(height: 30,),
                const Text(ClotTexts.receiveEmail,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: ClotColors.textLightBlack),),
                const SizedBox(height: 50,),
                ButtonTheme(
                  minWidth: double.infinity,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteNames.bottomNavbar);
                    },
                    height: 60,
                    color: ClotColors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child:const Text(
                      ClotTexts.seeOrderDetails,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
            
              ],
            ),
          ),
        ],
      ),
    );
  }
}
