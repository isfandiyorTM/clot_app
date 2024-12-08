import 'package:clot/core/constants/images.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import '../../core/constants/colors.dart';
import '../../core/route/route_names.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, RouteNames.signIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ClotColors.purple,
      body: Center(
        child: Image(image: AssetImage(ClotImages.clotLogo)),
      ),
    );
  }
}
