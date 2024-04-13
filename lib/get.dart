import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetData extends StatefulWidget {
  const GetData({super.key});

  @override
  State<GetData> createState() => _GetDataState();
}

class _GetDataState extends State<GetData> {
   String body = "No Data";
  void getData() async {
    var myResponse = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/users/3"));

    Map<String, dynamic> data = jsonDecode(myResponse.body);

    setState(() {
      body = data.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          return getData();
        },
        child: Icon(Icons.get_app),
      ),
      appBar: AppBar(
        title: Text("API"),
      ),
      body: Center(
        child: Text(body),
      ),
    );
  }
}