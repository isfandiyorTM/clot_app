import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/texts.dart';
import '../widgets/notification_message_widget.dart';

class GotNotificationPage extends StatelessWidget {
  const GotNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            NotificationMessage(message: ClotTexts.notificationMessage1,),
            NotificationMessage(message: ClotTexts.notificationMessage2,),
            NotificationMessage(message: ClotTexts.notificationMessage3,),
          ],
        ),
      ),
    );
  }
}

