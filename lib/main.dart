import 'package:flutter/material.dart';
import 'package:my_info/model/transition.dart';
import 'package:my_info/widget/chartForm.dart';

import 'model/transitionlist.dart';
import 'widget/list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //onst MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:  const Color(0xFFB00020),
        appBar: AppBar(
          title: Text("Transection App"),
          centerTitle: true,
          backgroundColor: Colors.orange.shade400,
        ),
        body: SafeArea(
          child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.orange.shade300,
                Colors.red.shade300,
              ],
            )
          ),
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ChartForm(),
            Column(
              children: [
                Container(
                  color: Colors.orange.shade300,
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    "Product Transections",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                ),
                TrasitionList()
              ],
            )
          ],
        )),
      ),
    ));
  }
}
