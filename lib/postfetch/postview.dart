import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:learning_apifetch/postfetch/post_controller.dart';
import 'package:learning_apifetch/postfetch/postmodel.dart';

class PostViewOne extends StatefulWidget {
  PostViewOne({super.key});

  @override
  State<PostViewOne> createState() => _PostViewOneState();
}

class _PostViewOneState extends State<PostViewOne> {
  final PostController postController = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Fetch API"),
      ),
      body: Obx(() {
        if (postController.isLoading.value) {
          return CircularProgressIndicator();
        } else {
          return ListView.builder(
            itemCount: postController.allmypost.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.grey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        postController.allmypost[index].title.toString(),
                      ),
                      Text(
                        postController.allmypost[index].body.toString(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }
      }),
    );
  }
}
