import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class AddressDetail extends StatelessWidget {
  AddressDetail({super.key, required this.address});

  String? address;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: ClotColors.bgLight,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              address!,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: ClotColors.black,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          TextButton(
              onPressed: () {},
              child: const Text(
                "Edit",
                style: TextStyle(
                    color: ClotColors.purple,
                    fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
