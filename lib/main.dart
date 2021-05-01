import 'package:colorswitch/binding/init_binding.dart';
import 'package:colorswitch/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialBinding: InitBinding(),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}
