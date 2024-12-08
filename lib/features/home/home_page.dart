import 'package:clot/core/constants/colors.dart';
import 'package:clot/core/constants/images.dart';
import 'package:clot/core/constants/texts.dart';
import 'package:clot/features/home/widgets/custom_input.dart';
import 'package:clot/features/home/widgets/see_all.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedValue = ClotTexts.men;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ClotColors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: ClotColors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {},
            child: const CircleAvatar(
              backgroundImage: AssetImage(ClotImages.accountImage),
            ),
          ),
        ),
        title: Container(
          width: 120,
          padding: const EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
            color: ClotColors.bgLight,
            borderRadius: BorderRadius.circular(40),
          ),
          child: DropdownButton<String>(
            value: selectedValue,
            underline: const SizedBox(),
            icon: const Icon(IconsaxPlusBroken.arrow_down_2, size: 28),
            style: const TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
            onChanged: (String? newValue) {
              setState(() {
                selectedValue = newValue!;
              });
            },
            items: <String>[ClotTexts.men, ClotTexts.woman, ClotTexts.kids]
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                IconsaxPlusBroken.bag_2,
                size: 20,
              ),
              color: ClotColors.white,
              style: IconButton.styleFrom(
                backgroundColor: ClotColors.purple,
              ),
            ),
          )
        ],
      ),
      // ignore: prefer_const_constructors
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CustomInput(hintText: ClotTexts.search),
                  const SizedBox(height: 20),
                  SeeAll(
                    type: ClotTexts.categories,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 100,
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Categorybutton(
                                buttonImage: ClotImages.categoryHoodies,
                                buttonText: ClotTexts.hoodies,
                              ),
                              Categorybutton(
                                buttonImage: ClotImages.categoryShorts,
                                buttonText: ClotTexts.shorts,
                              ),
                              Categorybutton(
                                buttonImage: ClotImages.categoryShoes,
                                buttonText: ClotTexts.shoes,
                              ),
                              Categorybutton(
                                buttonImage: ClotImages.categoryBag,
                                buttonText: ClotTexts.bag,
                              ),
                              Categorybutton(
                                buttonImage: ClotImages.categoryAccessories,
                                buttonText: ClotTexts.accessories,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SeeAll(type: ClotTexts.topSelling),
                ],
              ),
            ),
            Container(
              height: 350,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 20),
                  ProductCard(
                    isSale: false,
                  ),
                  ProductCard(
                    isSale: true,
                  ),
                  ProductCard(
                    isSale: false,
                  ),
                  ProductCard(
                    isSale: true,
                  ),
                  ProductCard(
                    isSale: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  ProductCard({
    super.key,
    required this.isSale,
  });

  bool? isSale;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const Image(
            image: AssetImage(ClotImages.productImage),
          ),
          Container(
            width: 159,
            decoration: const BoxDecoration(
              color: ClotColors.bgLight,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            padding: const EdgeInsets.only(left: 5, top: 10, bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  ClotTexts.jacket,
                  style: TextStyle(fontSize: 12, color: ClotColors.black),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Text(
                      '\$148.00',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: ClotColors.black),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      isSale! ? '\$148.00' : '',
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: ClotColors.textLightBlack,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Categorybutton extends StatelessWidget {
  Categorybutton({
    super.key,
    required this.buttonImage,
    required this.buttonText,
  });

  String? buttonImage;
  String? buttonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.only(right: 10),
        child: Column(
          children: [
            Image(
              image: AssetImage(buttonImage!),
              width: 56,
              height: 56,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              buttonText!,
              style: const TextStyle(
                fontSize: 12,
                color: ClotColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
