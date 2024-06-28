import 'package:flutter/material.dart';
import 'package:freshproject/constant/constant.dart';
import 'package:freshproject/features/contacts/contacts.dart';
import 'package:freshproject/global_widget/image_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Contacts(),
      backgroundColor: Theme.of(context).cardColor,
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(fontSize: 10, color: AppColor.white),
        currentIndex: 1,
        unselectedLabelStyle: TextStyle(fontSize: 10, color: AppColor.white),
        onTap: (v0) {},
        items: [
          BottomNavigationBarItem(
              icon: ImageWidget(
                imagePath: AppImages.message,
              ),
              label: 'Messages'),
          BottomNavigationBarItem(
              icon: ImageWidget(
                imagePath: AppImages.call,
              ),
              label: 'Calls'),
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {},
                child: ImageWidget(
                  imagePath: AppImages.user,
                ),
              ),
              label: 'Contacts'),
          BottomNavigationBarItem(
              icon: ImageWidget(
                imagePath: AppImages.settings,
              ),
              label: 'Settings'),
        ],
      ),
    );
  }
}
