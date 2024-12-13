import 'package:clot/core/constants/colors.dart';
import 'package:clot/core/constants/images.dart';
import 'package:clot/core/constants/texts.dart';
import 'package:clot/core/route/route_names.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class CartItems extends StatefulWidget {
  const CartItems({super.key});

  @override
  State<CartItems> createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  final List<Map<String, dynamic>> cartItems = [
    {
      'name': "Men's Harrington Jacket",
      'size': 'M',
      'color': 'Lemon',
      'price': 148.00,
      'image': ClotImages.productImage,
    },
    {
      'name': "Men's Coaches Jacket",
      'size': 'M',
      'color': 'Black',
      'price': 52.00,
      'image': ClotImages.productImage2,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: GestureDetector(
              onTap: () {},
              child: const Text(
                ClotTexts.removeAll,
                style: TextStyle(
                  fontSize: 16,
                  color: ClotColors.black,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.end,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: ClotColors.bgLight,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          item['image'],
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item['name'],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 8),
                            RichText(
                              text: TextSpan(
                                text: "Size - ",
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: ClotColors.textLightBlack,
                                ),
                                children: [
                                  TextSpan(
                                    text: item['size'],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: ClotColors.black,
                                        fontSize: 12),
                                  ),
                                  const TextSpan(
                                    text: "  Color - ",
                                    style: TextStyle(
                                        color: ClotColors.textLightBlack,
                                        fontSize: 12),
                                  ),
                                  TextSpan(
                                    text: item['color'],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: ClotColors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '\$${item['price']}',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: ClotColors.black),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  IconsaxPlusBroken.add,
                                  color: ClotColors.white,
                                ),
                                style: IconButton.styleFrom(
                                  backgroundColor: ClotColors.purple,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  IconsaxPlusBroken.minus,
                                  color: ClotColors.white,
                                ),
                                style: IconButton.styleFrom(
                                  backgroundColor: ClotColors.purple,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Column(
            children: [
              Cost(
                cost: ClotTexts.subtotal,
                price: '\$200',
              ),
              Cost(
                cost: ClotTexts.shippingCost,
                price: '\$8.00',
              ),
              Cost(
                cost: ClotTexts.tax,
                price: '\$0.00',
              ),
              Cost(
                cost: ClotTexts.total,
                price: '\$208',
              ),
              const SizedBox(height: 40),
              Container(
                padding:
                    const EdgeInsets.only(top: 10,bottom: 10,right: 10),
                decoration: BoxDecoration(
                  color: ClotColors.bgLight,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: const Icon(
                        IconsaxPlusBroken.discount_shape,
                        color: ClotColors.green,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {},
                          style: IconButton.styleFrom(
                            backgroundColor: ClotColors.purple
                          ),
                          icon: const Icon(
                            IconsaxPlusBroken.arrow_right_3,
                            color: ClotColors.white,
                          )),
                      hintText: ClotTexts.enterCouponCode,
                      contentPadding: const EdgeInsets.only(top: 13),
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: ClotColors.textLightBlack,
                      )),
                ),
              ),
              const SizedBox(height: 50),
              ButtonTheme(
                minWidth: double.infinity,
                child: MaterialButton(
                  onPressed: (){
                    Navigator.pushNamed(context, RouteNames.checkout);
                  },
                  height: 60,
                  color: ClotColors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Text(
                    ClotTexts.checkout,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Cost extends StatelessWidget {
  Cost({
    super.key,
    required this.cost,
    required this.price,
  });

  String? cost;
  String? price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            cost!,
            style: const TextStyle(
              fontSize: 16,
              color: ClotColors.textLightBlack,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            price!,
            style: const TextStyle(
              fontSize: 16,
              color: ClotColors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
