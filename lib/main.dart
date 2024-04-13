import 'package:aplikasi_api/delete.dart';
import 'package:aplikasi_api/get.dart';
import 'package:aplikasi_api/get_auto.dart';
import 'package:aplikasi_api/menu.dart';
import 'package:aplikasi_api/post.dart';
import 'package:aplikasi_api/put_patch.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/' : (context) => MyMenu(),
        '/get' : (context) => GetData(),
        '/get_auto' : (context) => GetAuto(),
        '/post' : (context) => PostData(),
        '/put_patch' : (context) => PutPatch(),
        '/delete' : (context) => DeleteData(),
      },
      initialRoute: "/"
    );
  }
}