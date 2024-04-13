import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetAuto extends StatefulWidget {
  const GetAuto({super.key});

  @override
  State<GetAuto> createState() => _GetAutoState();
}

class _GetAutoState extends State<GetAuto> {
  String body = "No Data";
  List data = [];
  Future getData() async {
    await Future.delayed(Duration(seconds: 3)); // jika pakai waktu bisa di off kan
    var myResponse =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));

    if (myResponse.statusCode == 200) {
      var dataResponse = jsonDecode(myResponse.body) as List;
        data = dataResponse;
    } else {
      print("gagal");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     return getData();
      //   },
      //   child: Icon(Icons.get_app),
      // ),
      appBar: AppBar(
        title: Text("API AUTO"),
      ),
      body: Center(
        child: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else {
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final dataUser = data[index];
                  return ListTile(
                    title: Text(dataUser['name']),
                    leading: CircleAvatar(
                      backgroundColor: Colors.lime,
                    ),
                    subtitle: Text(dataUser['email']),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
