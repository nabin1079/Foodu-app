

import 'package:ecommerce/views/first_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

void route(){
  
  Future.delayed(const Duration(seconds: 2),(){
Navigator.push(context, MaterialPageRoute(builder: (context){

return const Firstscreen();
}));
  });
}

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    route();
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image(
            image: AssetImage("assets/logo.png"),
            height: 80,
          ),
         SizedBox(width: 15,),
          SizedBox(
            height:40,
            child: Text(
              
              "FOODU",
              style: TextStyle(
                fontSize:30,
              
                fontWeight: FontWeight.w800,
              ),
            ),
          )
        ]),
        Padding(
          padding: EdgeInsets.all(14.0),
          child: CircularProgressIndicator(
            color: Colors.green,
          ),
        ),
      ],
    ));
  }
}
