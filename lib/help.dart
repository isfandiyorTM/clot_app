import 'package:flutter/material.dart';

class SearchTabBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Tablar soni
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: [
              // Back Icon
              IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {
                  // Add your back navigation logic here
                },
              ),

              // Search Bar
              Expanded(
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 16),

                      // Search Icon
                      const Icon(Icons.search, color: Colors.black54),

                      const SizedBox(width: 8),

                      // TextField
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search here...',
                            border: InputBorder.none,
                          ),
                        ),
                      ),

                      // Clear Icon
                      IconButton(
                        icon: const Icon(Icons.close, color: Colors.black54),
                        onPressed: () {
                          // Add your clear text logic here
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          bottom: const TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.black,
            tabs: [
              Tab(text: 'Tab 1'),
              Tab(text: 'Tab 2'),
              Tab(text: 'Tab 3'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            // Tab 1 content
            Center(child: Text('Tab 1 Content')),

            // Tab 2 content
            Center(child: Text('Tab 2 Content')),

            // Tab 3 content
            Center(child: Text('Tab 3 Content')),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: SearchTabBarExample()));
