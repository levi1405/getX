import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoopingtest/screen/home/view/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomeScreen()
    );
  }
}