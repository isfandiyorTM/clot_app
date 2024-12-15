import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems = [
    {
      'name': "Men's Harrington Jacket",
      'size': 'M',
      'color': 'Lemon',
      'price': 148.00,
      'image': 'https://via.placeholder.com/100',
    },
    {
      'name': "Men's Coaches Jacket",
      'size': 'M',
      'color': 'Black',
      'price': 52.00,
      'image': 'https://via.placeholder.com/100',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
        actions: [
          TextButton(
            onPressed: () {
              // "Remove All" funksiyasi
            },
            child: const Text(
              'Remove All',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                // Mahsulot rasmi
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    item['image'],
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16),
                // Mahsulot detallari
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
                      Text(
                        'Size - ${item['size']}  Color - ${item['color']}',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // Narx
                    Text(
                      '\$${item['price']}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 16),
                    // "+" va "-" tugmalari
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            // "+" bosilganda
                          },
                          icon: const Icon(
                            Icons.add_circle,
                            color: Colors.purple,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            // "-" bosilganda
                          },
                          icon: const Icon(
                            Icons.remove_circle,
                            color: Colors.purple,
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
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CartScreen(),
    theme: ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
    ),
  ));
}
