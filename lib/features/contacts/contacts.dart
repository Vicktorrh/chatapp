import 'package:flutter/material.dart';
import 'package:freshproject/constant/app_image.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

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
                    padding: EdgeInsets.only(left: 80),
                    child: Text(
                      'Contacts',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 95),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey),
                          image: DecorationImage(
                              image: AssetImage('assets/images/useradd.png'))),
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
              child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return ContactCard(
                      name: 'Afrin Sabila',
                      status: 'Life is beautiful',
                      imageUrl: AppImages.person5,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String status;
  const ContactCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage(imageUrl))),
          ),
          SizedBox(width: 7),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: EdgeInsets.only(right: 50),
                child: Text(
                  status,
                  style: const TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
