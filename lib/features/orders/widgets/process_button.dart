import 'package:clot/core/route/route_names.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class ProcessButton extends StatelessWidget {
  ProcessButton({
    super.key,
    required this.buttonText,
    required this.isInProcess
  });

  String? buttonText;
  bool? isInProcess;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: MaterialButton(
        onPressed: (){
        },
        color: isInProcess! ? ClotColors.purple : ClotColors.bgLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          buttonText!,
          style:  TextStyle(color: isInProcess! ? Colors.white : ClotColors.black, fontSize: 12),
        ),
      ),
    );
  }
}
