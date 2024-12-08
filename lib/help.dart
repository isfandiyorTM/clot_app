import 'package:flutter/material.dart';

class AboutCustomer extends StatefulWidget {
  @override
  _AboutCustomerState createState() => _AboutCustomerState();
}

class _AboutCustomerState extends State<AboutCustomer> {
  String? selectedGender; // To track the selected gender

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gender Selection')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Male Icon
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedGender = 'male'; // Set selected gender to male
                });
              },
              child: Column(
                children: [
                  Icon(
                    Icons.male,
                    size: 100,
                    color: selectedGender == 'male' ? Colors.blue : Colors.grey,
                  ),
                  Text(
                    'Male',
                    style: TextStyle(
                      fontSize: 18,
                      color:
                      selectedGender == 'male' ? Colors.blue : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(width: 50), // Space between icons

            // Female Icon
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedGender = 'female'; // Set selected gender to female
                });
              },
              child: Column(
                children: [
                  Icon(
                    Icons.female,
                    size: 100,
                    color:
                    selectedGender == 'female' ? Colors.pink : Colors.grey,
                  ),
                  Text(
                    'Female',
                    style: TextStyle(
                      fontSize: 18,
                      color: selectedGender == 'female'
                          ? Colors.pink
                          : Colors.grey,
                    ),
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
