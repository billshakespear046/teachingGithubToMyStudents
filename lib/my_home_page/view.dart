import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class MyHomePagePage extends StatelessWidget {
  String title;

  MyHomePagePage({Key? key, required this.title}) : super(key: key);

  final logic = Get.put(MyHomePageLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(title),),
        body: Center(
            child: Column(
              children: [
                Obx(() {
                  return Text("Mery Bachy Nikamy hain:  ${logic.numberr.value}");
                }),


                TextButton(onPressed: () {
                  logic.decrement();
                }, child: Text("Decrement"))
              ],
            )
        )
    );
  }
}
