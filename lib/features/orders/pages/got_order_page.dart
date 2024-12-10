import 'package:clot/core/route/route_names.dart';
import 'package:clot/features/orders/widgets/process_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/texts.dart';
import '../widgets/order_widget.dart';

class GotOrderPage extends StatelessWidget {
  const GotOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 20),
                ProcessButton(buttonText: ClotTexts.processing, isInProcess: true,),
                ProcessButton(buttonText: ClotTexts.shipped, isInProcess: false,),
                ProcessButton(buttonText: ClotTexts.delivered, isInProcess: false,),
                ProcessButton(buttonText: ClotTexts.returned, isInProcess: false,),
                ProcessButton(buttonText: ClotTexts.canceled, isInProcess: false,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                OrderWidget(
                  message: ClotTexts.order1,
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.orderDetails , arguments: ClotTexts.order1);
                  },
                ),
                OrderWidget(
                  message: ClotTexts.order2,
                  onPressed: () {},
                ),
                OrderWidget(
                  message: ClotTexts.order3,
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
