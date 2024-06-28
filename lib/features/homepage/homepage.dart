import 'package:flutter/material.dart';
import 'package:freshproject/constant/app_image.dart';
import 'package:freshproject/features/splash/widget/switch_button.dart';
import 'package:freshproject/global_widget/status_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 30),
              child: Row(
                children: [
                  Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white)),
                      child: Icon(
                        Icons.search,
                        size: 30,
                        color: Theme.of(context).cardColor,
                      )),
                  SwitchButton(),
                  const Padding(
                    padding: EdgeInsets.only(left: 100),
                    child: Text(
                      'Home',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 95),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/ppp.png'))),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 90,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: status.length,
                  itemBuilder: (context, index) {
                    return StatusWidget(
                      name: status[index]['name'],
                      color: status[index]['color'],
                      image: status[index]['image'],
                    );
                  }),
            ),
            SizedBox(height: 30),
            Container(
                height: 700,
                width: 500,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(50)),
                child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return ChatCard(
                        name: 'Alex Linderston',
                        lastMessage: 'How are you doing?',
                        imageUrl: AppImages.person2,
                        time: DateTime.now(),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}

class ChatCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String lastMessage;
  final DateTime time;
  const ChatCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.lastMessage,
    required this.time,
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
                  lastMessage,
                  style: const TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          Spacer(),
          Text('2 mins ago'),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}

List<Map> status = [
  {
    'name': 'Steven',
    'color': Colors.pink,
    'image': AppImages.person1,
  },
  {
    'name': 'Max',
    'color': Colors.green,
    'image': AppImages.person2,
  },
  {
    'name': 'Victor',
    'color': Colors.red,
    'image': AppImages.person3,
  },
  {
    'name': 'Adil',
    'color': Colors.amber,
    'image': AppImages.person4,
  },
  {
    'name': 'Ibk',
    'color': Colors.grey,
    'image': AppImages.person5,
  },
  {
    'name': 'Victor',
    'color': Colors.blue,
    'image': AppImages.person5,
  },
  {
    'name': 'Olamide',
    'color': Colors.white,
    'image': AppImages.person4,
  }
];
