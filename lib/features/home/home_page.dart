import 'package:clot/core/constants/colors.dart';
import 'package:clot/core/constants/images.dart';
import 'package:clot/core/constants/texts.dart';
import 'package:clot/core/route/route_names.dart';
import 'package:clot/features/bottom_nav_bar.dart';
import 'package:clot/features/home/widgets/category_button.dart';
import 'package:clot/features/home/widgets/custom_input.dart';
import 'package:clot/features/home/widgets/product_card.dart';
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
  final List<Map<String, dynamic>> products = [
    {
      'image': ClotImages.productImage,
      'name': "Men's Harrington Jacket",
      'price': 148.00,
      'isSale': false,
    },
    {
      'image': ClotImages.productImage2,
      'name': "Max Cirro Men's Slides",
      'price': 55.97,
      'isSale': true,
    },
    {
      'image': ClotImages.productImage3,
      'name': "Woman's Fleece Pullover Hoodie",
      'price': 100.00,
      'isSale': false,
    },
    {
      'image': ClotImages.productImage4,
      'name': "Men's Ice-Dye Pullover Hoodie",
      'price': 128.97,
      'isSale': true,
    },
    {
      'image': ClotImages.productImage5,
      'name': "Men's Workwear Jacket",
      'price': 128.97,
      'isSale': false,
    },
  ];
  final List<Map<String, dynamic>> newProducts = [
    {
      'image': ClotImages.productImage4,
      'name': "Men's Ice-Dye Pullover Hoodie",
      'price': 128.97,
      'isSale': true,
    },
    {
      'image': ClotImages.productImage5,
      'name': "Men's Workwear Jacket",
      'price': 128.97,
      'isSale': false,
    },
    {
      'image': ClotImages.productImage2,
      'name': "Max Cirro Men's Slides",
      'price': 55.97,
      'isSale': true,
    },
    {
      'image': ClotImages.productImage,
      'name': "Men's Harrington Jacket",
      'price': 148.00,
      'isSale': false,
    },
    {
      'image': ClotImages.productImage3,
      'name': "Woman's Fleece Pullover Hoodie",
      'price': 100.00,
      'isSale': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = screenWidth * 0.39;

    return SafeArea(
      child: Scaffold(
        backgroundColor: ClotColors.white,
        appBar: AppBar(
          toolbarHeight: 80,
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
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
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
                onPressed: () {
                },
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
                      onPressed: () {
                        Navigator.pushNamed(
                            context, RouteNames.shopByCategories);
                      },
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
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context,
                                      RouteNames.categories,
                                      arguments: "Hoodies",
                                    );
                                  },
                                ),
                                Categorybutton(
                                  buttonImage: ClotImages.categoryShorts,
                                  buttonText: ClotTexts.shorts,
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context,
                                      RouteNames.categories,
                                      arguments: "Shorts",
                                    );
                                  },
                                ),
                                Categorybutton(
                                  buttonImage: ClotImages.categoryShoes,
                                  buttonText: ClotTexts.shoes,
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context,
                                      RouteNames.categories,
                                      arguments: "Shoes",
                                    );
                                  },
                                ),
                                Categorybutton(
                                  buttonImage: ClotImages.categoryBag,
                                  buttonText: ClotTexts.bag,
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context,
                                      RouteNames.categories,
                                      arguments: "Bag",
                                    );
                                  },
                                ),
                                Categorybutton(
                                  buttonImage: ClotImages.categoryAccessories,
                                  buttonText: ClotTexts.accessories,
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context,
                                      RouteNames.categories,
                                      arguments: "Accessories",
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SeeAll(
                      type: ClotTexts.topSelling,
                      onPressed: () {
                        Navigator.pushNamed(
                            context, RouteNames.shopByCategories);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 290,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return Container(
                      width: itemWidth,
                      height: 290,
                      margin: const EdgeInsets.only(left: 16),
                      child: ProductCard(
                        image: product['image'],
                        name: product['name'],
                        price: product['price'],
                        isSale: product['isSale'],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: SeeAll(
                  type: ClotTexts.newIn,
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.shopByCategories);
                  },
                ),
              ),
              SizedBox(
                height: 290,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: newProducts.length,
                  itemBuilder: (context, index) {
                    final product = newProducts[index];
                    return Container(
                      width: itemWidth,
                      height: 290,
                      margin: const EdgeInsets.only(left: 16),
                      child: ProductCard(
                        image: product['image'],
                        name: product['name'],
                        price: product['price'],
                        isSale: product['isSale'],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
