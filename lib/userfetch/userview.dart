import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_apifetch/userfetch/user_controller.dart';

class UserView extends StatefulWidget {
  UserView({super.key});

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Fetch API"),
      ),
      body: Obx(() {
        if (userController.isLoading.value) {
          return CircularProgressIndicator();
        } else {
          return ListView.builder(
            itemCount: userController.userallData.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.grey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(userController.userallData[index].address.street),
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
