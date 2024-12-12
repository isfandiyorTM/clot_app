import 'package:clot/core/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../core/constants/colors.dart';
import '../widgets/address_detail.dart';

class AddAddressPage extends StatelessWidget {
  AddAddressPage({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
        title: const Text(
          ClotTexts.addAddress,
          style: TextStyle(
            color: ClotColors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: ClotTexts.streetAddress,
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    color: ClotColors.textLightBlack,
                  ),
                  filled: true,
                  fillColor: ClotColors.bgLight,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ClotTexts.enterStreetAddress;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              TextFormField(
                decoration: InputDecoration(
                  hintText: ClotTexts.city,
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    color: ClotColors.textLightBlack,
                  ),
                  filled: true,
                  fillColor: ClotColors.bgLight,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return ClotTexts.enterCity;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: ClotTexts.state,
                        hintStyle: const TextStyle(
                          fontSize: 16,
                          color: ClotColors.textLightBlack,
                        ),
                        filled: true,
                        fillColor: ClotColors.bgLight,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ClotTexts.enterState;
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: ClotTexts.zipCode,
                        hintStyle: const TextStyle(
                          fontSize: 16,
                          color: ClotColors.textLightBlack,
                        ),
                        filled: true,
                        fillColor: ClotColors.bgLight,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ClotTexts.enterZipCode;
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),

              // Submit Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ClotColors.purple,
                    padding: const EdgeInsets.all(15),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // If all fields are valid
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  child: const Text(ClotTexts.save,style: TextStyle(color: ClotColors.white,fontSize: 16),),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
