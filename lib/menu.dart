import 'package:flutter/material.dart';

class MyMenu extends StatelessWidget {
  const MyMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/get');
              },
              child: Text("Get Data"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/get_auto');
              },
              child: Text("Get Data Auto"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/post');
              },
              child: Text("Post Data / Tambah"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/put_patch');
              },
              child: Text("Put Dan Patch / Edit"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/delete');
              },
              child: Text("Delete / Hapus"),
            ),
          ],
        ),
      ),
    );
  }
}
