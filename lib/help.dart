import 'package:flutter/material.dart';

class HoodieGridScreen extends StatelessWidget {
  // Example data for hoodies
  final List<Map<String, dynamic>> hoodies = [
    {
      'image': 'assets/images/hoodie1.png', // Replace with actual image paths
      'name': "Men's Fleece Pullover Hoodie",
      'price': 100.00,
    },
    {
      'image': 'assets/images/hoodie2.png',
      'name': "Fleece Pullover Skate Hoodie",
      'price': 150.97,
    },
    {
      'image': 'assets/images/hoodie3.png',
      'name': "Fleece Skate Hoodie",
      'price': 110.00,
    },
    {
      'image': 'assets/images/hoodie4.png',
      'name': "Men's Ice-Dye Pullover Hoodie",
      'price': 128.97,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Hoodies (240)',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: GridView.builder(
          itemCount: hoodies.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of items per row
            crossAxisSpacing: 16, // Horizontal spacing between items
            mainAxisSpacing: 16, // Vertical spacing between items
            childAspectRatio: 0.7, // Adjust the height/width ratio of items
          ),
          itemBuilder: (context, index) {
            final hoodie = hoodies[index];
            return HoodieCard(
              image: hoodie['image'],
              name: hoodie['name'],
              price: hoodie['price'],
            );
          },
        ),
      ),
    );
  }
}

class HoodieCard extends StatefulWidget {
  final String image;
  final String name;
  final double price;

  const HoodieCard({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  State<HoodieCard> createState() => _HoodieCardState();
}

class _HoodieCardState extends State<HoodieCard> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image with Like Button
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.asset(
                  widget.image,
                  fit: BoxFit.cover,
                  height: 150,
                  width: double.infinity,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isLiked = !isLiked;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      isLiked ? Icons.favorite : Icons.favorite_border,
                      color: isLiked ? Colors.red : Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Product Details
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4),
                Text(
                  '\$${widget.price.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
