import 'package:flutter/material.dart';
import 'package:freshproject/constant/app_image.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 25),
              child: Row(
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey)),
                      child: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white,
                      )),
                  const Padding(
                    padding: EdgeInsets.only(left: 120),
                    child: Text(
                      'Calls',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey),
                          image: DecorationImage(
                              image: AssetImage(AppImages.addcall))),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 900,
              width: 500,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50)),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 280, top: 40),
                    child: Text(
                      'Recent',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 30),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(AppImages.person2))),
                      ),
                      SizedBox(width: 10),
                      const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 40),
                            child: Text('Team Align',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w500)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 40),
                            child: Text(
                              'Today, 09:30 AM',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 60),
                      Image(image: AssetImage(AppImages.calling)),
                      SizedBox(width: 20),
                      Image(image: AssetImage(AppImages.video)),
                    ],
                  ),
                  SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 90),
                    child: Divider(color: Color.fromARGB(255, 211, 207, 207)),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 30),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(AppImages.person2))),
                      ),
                      SizedBox(width: 10),
                      const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 40),
                            child: Text('Jhon Abraham',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w500)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 80),
                            child: Text(
                              'Today, 07:30 AM',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 25),
                      Image(image: AssetImage(AppImages.calling)),
                      SizedBox(width: 20),
                      Image(image: AssetImage(AppImages.video)),
                    ],
                  ),
                  SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 90),
                    child: Divider(color: Color.fromARGB(255, 211, 207, 207)),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 30),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(AppImages.person2))),
                      ),
                      SizedBox(width: 10),
                      const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 40),
                            child: Text('Sabila Sayma',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w500)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 40),
                            child: Text(
                              'Yesterday, 07:35 PM',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 35),
                      Image(image: AssetImage(AppImages.calling)),
                      SizedBox(width: 20),
                      Image(image: AssetImage(AppImages.video)),
                    ],
                  ),
                  SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 90),
                    child: Divider(color: Color.fromARGB(255, 211, 207, 207)),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 30),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(AppImages.person2))),
                      ),
                      SizedBox(width: 10),
                      const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 40),
                            child: Text('Alex Linderson',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w500)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 70),
                            child: Text(
                              'Monday, 09:30 AM',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Image(image: AssetImage(AppImages.calling)),
                      SizedBox(width: 20),
                      Image(image: AssetImage(AppImages.video)),
                    ],
                  ),
                  SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 90),
                    child: Divider(color: Color.fromARGB(255, 211, 207, 207)),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 30),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(AppImages.person2))),
                      ),
                      SizedBox(width: 10),
                      const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 40),
                            child: Text('Jhon Abraham',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w500)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 50),
                            child: Text(
                              '03/07/22, 07:30 AM',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Image(image: AssetImage(AppImages.calling)),
                      SizedBox(width: 20),
                      Image(image: AssetImage(AppImages.video)),
                    ],
                  ),
                  SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 90),
                    child: Divider(color: Color.fromARGB(255, 211, 207, 207)),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 30),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(AppImages.person2))),
                      ),
                      SizedBox(width: 10),
                      const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 40),
                            child: Text('John Borino',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w500)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 40),
                            child: Text(
                              'Monday, 09:30 AM',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 50),
                      Image(image: AssetImage(AppImages.calling)),
                      SizedBox(width: 20),
                      Image(image: AssetImage(AppImages.video)),
                    ],
                  ),
                  SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 90),
                    child: Divider(color: Color.fromARGB(255, 211, 207, 207)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
