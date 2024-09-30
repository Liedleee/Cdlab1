import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/root_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter MVC Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RootPage(), // Menetapkan RootPage sebagai halaman utama
    );
  }
}
