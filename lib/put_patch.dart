import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PutPatch extends StatefulWidget {
  const PutPatch({super.key});

  @override
  State<PutPatch> createState() => _PutPatchState();
}

class _PutPatchState extends State<PutPatch> {
  void postData() async {
    String url = "https://jsonplaceholder.typicode.com/posts/3";

// put di replace
// patch mengantikan
    // var response = await http.put(Uri.parse(url), body: {
    var response = await http.patch(Uri.parse(url), body: {
      "userId": Random().nextInt(15).toString(),
      "title": inputTitle.text,
      "body": inputBody.text
    });

    print(response.body);
  }

  TextEditingController inputTitle = TextEditingController();
  TextEditingController inputBody = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Put dan Patch / Edit"),
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
              ElevatedButton(
                  onPressed: () {
                    postData();
                  },
                  child: Text("Edit Data"))
            ],
          ),
        ),
      ),
    );
  }
}