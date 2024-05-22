import 'package:ecommerce/views/navbar/explore.dart';
import 'package:ecommerce/views/navbar/orders.dart';
import 'package:ecommerce/views/navbar/profile.dart';
import 'package:ecommerce/views/navbar/shop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final List<Widget> tabs = [
    const Shoppage(),
    const Orderpage(),
    const Explorepage(),
    const Profilepage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[index],
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 62, 9, 71),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                setState(() {
                  index = 0;
                });
              },
              icon: index == 0
                  ? const Icon(
                      Icons.add_business_rounded,
                      color: Colors.red,
                      size: 30,
                    )
                  : const Icon(
                      Icons.add_business_rounded,
                      color: Colors.green,
                      size: 25,
                    ),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                setState(() {
                  index = 1;
                });
              },
              icon: index == 1
                  ? const Icon(
                      Icons.card_travel,
                      color: Colors.red,
                      size: 30,
                    )
                  : const Icon(
                      Icons.card_travel,
                      color: Colors.green,
                      size: 25,
                    ),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                setState(() {
                  index = 2;
                });
              },
              icon: index == 2
                  ? const Icon(
                      Icons.travel_explore_sharp,
                      color: Colors.red,
                      size: 30,
                    )
                  : const Icon(
                      Icons.travel_explore_sharp,
                      color: Colors.green,
                      size: 25,
                    ),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                setState(() {
                  index = 3;
                });
              },
              icon: index == 3
                  ? const Icon(
                      Icons.person,
                      color: Colors.red,
                      size: 30,
                    )
                  : const Icon(
                      Icons.person,
                      color: Colors.green,
                      size: 25,
                    ),
            )
          ],
        ),
      ),
    );
  }
}
