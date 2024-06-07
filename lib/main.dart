import 'package:ecommerce/view_modal/catogery_view_model.dart';
import 'package:ecommerce/view_modal/example_view_modal.dart';
import 'package:ecommerce/view_modal/list_example_view_modal.dart';
import 'package:ecommerce/view_modal/slider_view_modal.dart';
import 'package:ecommerce/views/splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ExampleViewModal>(
          create: (_) => ExampleViewModal(),
        ),

ChangeNotifierProvider(create: (_) =>  ListExampleViewModal()  ),
ChangeNotifierProvider(create: (_) =>  SliderViewModel()  ),
ChangeNotifierProvider(create: (_) =>  CategoryViewModal()  ),


      ],
      child: MaterialApp(
        builder: FToastBuilder(),
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Splashscreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
