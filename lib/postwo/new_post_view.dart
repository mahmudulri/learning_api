import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_apifetch/postwo/new_post_controller.dart';

class NewPostView extends StatefulWidget {
  NewPostView({super.key});

  @override
  State<NewPostView> createState() => _NewPostViewState();
}

class _NewPostViewState extends State<NewPostView> {
  NewPostController newPostController = Get.put(NewPostController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Post Type Two"),
      ),
      body: Obx(() => newPostController.isloading.value
          ? CircularProgressIndicator()
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 5,
                  );
                },
                itemCount: newPostController.allpost.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                    ),
                    child: Column(
                      children: [
                        Text(
                          newPostController.allpost[index].title,
                        ),
                        Text(
                          newPostController.allpost[index].body,
                        ),
                      ],
                    ),
                  );
                },
              ),
            )),
    );
  }
}
