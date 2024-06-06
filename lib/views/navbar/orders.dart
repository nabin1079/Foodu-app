import 'package:ecommerce/view_modal/example_view_modal.dart';
import 'package:ecommerce/view_modal/list_example_view_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Orderpage extends StatefulWidget {
  const Orderpage({super.key});

  @override
  State<Orderpage> createState() => _OrderpageState();
}

class _OrderpageState extends State<Orderpage> {
  TextEditingController valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ExampleViewModal>(builder: (BuildContext context,
          ExampleViewModal providerValue, Widget? child) {
        return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                        children: [
              ElevatedButton(
                  onPressed: () {
                    providerValue.changeLoading(true);
                  },
                  child: const Text("start")),
              ElevatedButton(
                  onPressed: () {
                    providerValue.changeLoading(false);
                  },
                  child: const Text("stop")),
              providerValue.isLoading
                  ? const CircularProgressIndicator()
                  : const Text("Stop"),
              Consumer<ListExampleViewModal>(builder: (BuildContext context,
                  ListExampleViewModal listProvider, Widget? child) {
                return Column(
                  children: [
                    TextFormField(
                      controller: valueController,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          listProvider.addDataOnList(valueController.text);
                        },
                        child: const Text("Add")),
                    ListView.builder(
                        itemCount: listProvider.dummyList.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return  Text("${listProvider.dummyList[index]}");
                        }),
                  ],
                );
              })
                        ],
                      ),
            ));
      }),
    );
  }
}
