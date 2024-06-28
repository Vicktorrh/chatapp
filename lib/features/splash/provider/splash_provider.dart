import 'package:flutter/material.dart';
import 'package:freshproject/features/onboarding/screen/onboarding.dart';

class SplashProvider extends ChangeNotifier {
  goNextPage(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => Onboarding()));
    });
  }
}
