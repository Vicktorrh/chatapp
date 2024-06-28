import 'package:flutter/material.dart';
import 'package:freshproject/constant/app_image.dart';
import 'package:freshproject/features/splash/provider/splash_provider.dart';
import 'package:freshproject/features/splash/widget/switch_button.dart';
import 'package:freshproject/global_widget/image_widget.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<SplashProvider>(context).goNextPage(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageWidget(
                imagePath: AppImages.logoPath,
                color: Theme.of(context).dividerColor,
              ),
              Text('ChatBox',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 32,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold)),
              SwitchButton(),
            ],
          ),
        ),
      ),
    );
  }
}
