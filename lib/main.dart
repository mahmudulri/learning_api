import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_apifetch/postfetch/postview.dart';
import 'package:learning_apifetch/postwo/new_post_view.dart';
import 'package:learning_apifetch/userfetch/userview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NewPostView(),
    );
  }
}
