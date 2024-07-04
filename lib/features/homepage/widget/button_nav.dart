import 'package:flutter/material.dart';
import 'package:freshproject/constant/constant.dart';
import 'package:freshproject/features/contacts/contacts.dart';
import 'package:freshproject/features/homepage/homepage.dart';
import 'package:freshproject/features/homepage/provider/nav_provider.dart';
import 'package:freshproject/global_widget/image_widget.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NavProvider>(builder: (context, navProvider, _) {
      return Scaffold(
        body: navProvider.screens[navProvider.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: navProvider.currentIndex,
          onTap: navProvider.updateCurrentIndex,
          items: [
            BottomNavigationBarItem(
                icon: ImageWidget(
                  imagePath: AppImages.message,
                  color: navProvider.checkCurrentState(0)
                      ? Theme.of(context).dividerColor
                      : Colors.grey,
                ),
                label: 'Messages'),
            BottomNavigationBarItem(
                icon: ImageWidget(
                  imagePath: AppImages.call,
                  color: navProvider.checkCurrentState(1)
                      ? Theme.of(context).dividerColor
                      : Colors.grey,
                ),
                label: 'Calls'),
            BottomNavigationBarItem(
                icon: ImageWidget(
                  imagePath: AppImages.user,
                  color: navProvider.checkCurrentState(2)
                      ? Theme.of(context).dividerColor
                      : Colors.grey,
                ),
                label: 'Contacts'),
            BottomNavigationBarItem(
                icon: ImageWidget(
                  imagePath: AppImages.settings,
                  color: navProvider.checkCurrentState(3)
                      ? Theme.of(context).dividerColor
                      : Colors.grey,
                ),
                label: 'Settings'),
          ],
        ),
      );
    });
  }
}
