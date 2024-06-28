import 'package:flutter/material.dart';

class NewHome extends StatelessWidget {
  const NewHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                        color: Colors.white,
                      )),
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
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.purple),
                        image: DecorationImage(
                            image: AssetImage('assets/images/pp1.png'))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.amber),
                          image: DecorationImage(
                              image: AssetImage('assets/images/pp2.png'))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey),
                          image: DecorationImage(
                              image: AssetImage('assets/images/pp3.png'))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey),
                          image: DecorationImage(
                              image: AssetImage('assets/images/pp4.png'))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.pink),
                          image: DecorationImage(
                              image: AssetImage('assets/images/pp5.png'))),
                    ),
                  ),
                ],
              ),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text('My status',
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text('Adil',
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 45),
                  child: Text('Marina',
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text('Dean',
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 45),
                  child: Text('Max',
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              height: 700,
              width: 500,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 550, left: 15),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/pp1.png'))),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 45, left: 10),
                    child: Column(
                      children: [
                        Text(
                          'Alex Linderston',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 50),
                          child: Text(
                            'How are you today?',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 580, left: 60),
                    child: Text('2 mins ago'),
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
