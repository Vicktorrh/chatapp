import 'package:flutter/material.dart';
import 'package:freshproject/constant/constant.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Row(
          children: [
            Image.asset(AppImages.person2),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  Text('John Abraham',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  Padding(
                    padding: EdgeInsets.only(right: 80),
                    child: Text(
                      'Active now',
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Image.asset(AppImages.calls)),
          IconButton(onPressed: () {}, icon: Image.asset(AppImages.videos)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 22,
              width: 70,
              color: Color.fromARGB(255, 213, 197, 197),
              child: Text('Today'),
            ),
          ],
        ),
      ),
    );
  }
}
