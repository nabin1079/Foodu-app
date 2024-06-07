import 'dart:convert';

import 'package:ecommerce/model/sliddermodel.dart';
import 'package:ecommerce/resource/components/skeleton/product_slider.dart';
import 'package:ecommerce/resource/components/skeleton/slider_loading_skeleton.dart';
import 'package:ecommerce/resource/components/slider_widgets.dart';
import 'package:ecommerce/resource/components/textformfield@widgets.dart';
import 'package:ecommerce/view_modal/catogery_view_model.dart';
import 'package:ecommerce/view_modal/slider_view_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class Shoppage extends StatefulWidget {
  const Shoppage({super.key});

  @override
  State<Shoppage> createState() => _ShoppageState();
}

class _ShoppageState extends State<Shoppage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Provider.of<SliderViewModel>(context, listen: false).fetchsliderapp();
    Provider.of<CategoryViewModal>(context, listen: false).fetchCategoryList();
  }
TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: CircleAvatar(
            child: ClipOval(
              child: Image.network("",errorBuilder: (context, error, stackTrace) {
                
                return Image.asset('assets/logo.png');
              },
              fit: BoxFit.cover,
              width: 40,
              height: 40,
              ),
            ),
          ),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Delivery To",style: TextStyle(color: Colors.grey),),
            Text("Time Sqare",style: TextStyle(color: Colors.black,fontSize: 14),),
          
          ],
        ),
        actions: const [
          Icon(Icons.notifications),
          SizedBox(width: 10,),
          Icon(Icons.shopping_bag),
          SizedBox(width: 10,),
        ],
      ),
        body: SafeArea(
          child: Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            const SizedBox(height: 10,),
            SizedBox(height: 45,
              child: TextFormFieldWidgets(controller: searchController, hintText: "Search", icon: Icons.search, keyboardType: TextInputType.name, obscureText: false)),
            
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
    
              Text("Special Offer",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
              
              Text("View all",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600, color: Colors.green),),
            ],),
            const SizedBox(height: 15,),
          
            Consumer<SliderViewModel>(builder: (BuildContext context,
                SliderViewModel sliderProvider, Widget? child) {
              return sliderProvider.isLoading
                  ? const SliderLoading()
                  : Sliderwidget(
                      data: sliderProvider.sliderdata,
                    );
            }),
            //9816491822
            const SizedBox(
              height: 20,
            ),
            Consumer<CategoryViewModal>(builder: (BuildContext context, CategoryViewModal categoryviewvalue, Widget? child) { 
              return GridView.builder(shrinkWrap: true,
              itemCount: categoryviewvalue.categoryData.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,
              childAspectRatio: 1), itemBuilder: (context,index){
                return  Column(children: [
                  Image(errorBuilder: (context, error, stackTrace) {
                    return const Image(image: AssetImage("assets/delivery.png"),height: 50,width: 50,);
                  }, image: NetworkImage("${categoryviewvalue.categoryData[index].image}")),

                  Text("${categoryviewvalue.categoryData[index].name}")
                ],);
              });
             },),
            // const ProductSlider(),
            
            ListView.builder(
              shrinkWrap: true,
          itemCount: 10,
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index){
                return null;
              

              })

          ],
        ),
          ),
        ));
  }
}
