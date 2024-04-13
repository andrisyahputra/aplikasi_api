import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DeleteData extends StatefulWidget {
  const DeleteData({super.key});

  @override
  State<DeleteData> createState() => _DeleteDataState();
}

class _DeleteDataState extends State<DeleteData> {
  void postData() async {
    String url = "https://jsonplaceholder.typicode.com/posts/3";

    var response = await http.delete(Uri.parse(url));

    print(response.statusCode);
    print(response.body);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delete / Hapus"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
              ElevatedButton(
                  onPressed: () {
                    postData();
                  },
                  child: Text("Hapus"))
            ],
          ),
        ),
      ),
    );
  }
}