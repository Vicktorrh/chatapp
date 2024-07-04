import 'package:flutter/material.dart';
import 'package:freshproject/constant/app_image.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 50),
            const Text('Settings',
                style: TextStyle(fontSize: 25, color: Colors.white)),
            SizedBox(height: 40),
            Container(
              height: 900,
              width: 500,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 30),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(AppImages.person1))),
                        ),
                        SizedBox(width: 10),
                        const Column(
                          children: [
                            Text('Nazrul Islam',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w500)),
                            Padding(
                              padding: EdgeInsets.only(right: 40),
                              child: Text(
                                'Never give up',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 130),
                        Image(image: AssetImage(AppImages.qrcode)),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Divider(color: Colors.grey),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(AppImages.account))),
                      ),
                      SizedBox(width: 10),
                      const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 120),
                            child: Text('Account',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500)),
                          ),
                          Text(
                            'Privacy, security, change number',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(AppImages.chat))),
                        ),
                        SizedBox(width: 10),
                        const Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 140),
                              child: Text('Chat',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                            ),
                            Text(
                              'Chat history, theme, wallpaper',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(AppImages.notification))),
                        ),
                        SizedBox(width: 10),
                        const Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 140),
                              child: Text('Notifications',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 90),
                              child: Text(
                                'Messages, group and others',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(AppImages.help))),
                        ),
                        SizedBox(width: 10),
                        const Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 185),
                              child: Text('Help',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                            ),
                            Text(
                              'Help center, contact us, privacy policy',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(AppImages.storage))),
                        ),
                        SizedBox(width: 10),
                        const Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 140),
                              child: Text('Storage and data',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 110),
                              child: Text(
                                'Network usage, storage usage',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(AppImages.chat))),
                        ),
                        SizedBox(width: 10),
                        const Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 140),
                              child: Text('Invite a friend',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}
