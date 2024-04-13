import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostData extends StatefulWidget {
  const PostData({super.key});

  @override
  State<PostData> createState() => _PostDataState();
}

class _PostDataState extends State<PostData> {
  void postData() async {
    String url = "https://jsonplaceholder.typicode.com/posts";

    var response = await http.post(Uri.parse(url),body: {
      "userId": Random().nextInt(15).toString(),
      "title": inputTitle.text,
      "body":
          inputBody.text
    });

    print(response.body);
  }

  TextEditingController inputTitle = TextEditingController();
  TextEditingController inputBody = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Data"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: inputTitle,
              ),
              TextField(
                controller: inputBody,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {
                postData();
              }, child: Text("Post Data"))
            ],
          ),
        ),
      ),
    );
  }
}