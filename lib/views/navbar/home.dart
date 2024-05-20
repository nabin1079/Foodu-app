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
  int index =0;
final List<Widget> tabs=[
  const Shoppage(),
  const Orderpage(),
  const Profilepage(),

];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: tabs[index],
      bottomNavigationBar: const BottomAppBar(child: Row(
        children: [
          
        ],
      ),)),
    )
  }
}