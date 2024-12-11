import 'package:clot/core/constants/colors.dart';
import 'package:clot/core/constants/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import 'got_order_page.dart';

class OrderDetails extends StatelessWidget {
  OrderDetails({super.key, required this.order});

  String? order;

  @override
  Widget build(BuildContext context) {
    bool hasOrder = false;

    return SafeArea(
      child: Scaffold(
        backgroundColor: ClotColors.white,
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: ClotColors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: IconButton.styleFrom(
              backgroundColor: ClotColors.bgLight,
            ),
            icon: const Icon(IconsaxPlusBroken.arrow_left_2),
            color: ClotColors.black,
          ),
          title: Text(
            order!,
            style: const TextStyle(
              color: ClotColors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OrderProcess(
                process: ClotTexts.delivered,
                isDisabled: true,
              ),
              OrderProcess(
                process: ClotTexts.shipped,
                isDisabled: false,
              ),
              OrderProcess(
                process: ClotTexts.orderConfirmed,
                isDisabled: false,
              ),
              OrderProcess(
                process: ClotTexts.orderPlaced,
                isDisabled: false,
              ),
              const SizedBox(height: 20),
              const Text(
                ClotTexts.orderItems,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: ClotColors.black,
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.only(bottom: 20),
                  color: ClotColors.bgLight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            IconsaxPlusBroken.receipt_1,
                            color: ClotColors.black,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '4 items',
                            style: TextStyle(
                                fontSize: 16,
                                color: ClotColors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'View All',
                          style: TextStyle(
                            color: ClotColors.purple,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                ClotTexts.shippingDetails,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: ClotColors.black,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                color: ClotColors.bgLight,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(ClotTexts.detailAddress,style: TextStyle(fontSize: 12,color: ClotColors.black,fontWeight: FontWeight.w500),),
                    SizedBox(height: 10),
                    Text(ClotTexts.detailPhone,style: TextStyle(fontSize: 12,color: ClotColors.black,fontWeight: FontWeight.w500),),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

class OrderProcess extends StatelessWidget {
  OrderProcess({
    super.key,
    required this.process,
    required this.isDisabled,
  });

  String? process;
  bool? isDisabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                size: 25,
                CupertinoIcons.checkmark_alt_circle_fill,
                color:
                    isDisabled! ? ClotColors.textLightBlack : ClotColors.purple,
              ),
              const SizedBox(width: 20),
              Text(
                process!,
                style: TextStyle(
                    fontSize: 16,
                    color: isDisabled!
                        ? ClotColors.textLightBlack
                        : ClotColors.black,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Text(
            '28 May',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: isDisabled! ? ClotColors.textLightBlack : ClotColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
