import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ColorController extends GetxController {
  final RxInt _r = 255.obs;
  final RxInt _g = 255.obs;
  final RxInt _b = 255.obs;

  int get r => this._r.value;
  int get g => this._g.value;
  int get b => this._b.value;

  set r(value) => this._r.value = value;
  set g(value) => this._g.value = value;
  set b(value) => this._b.value = value;
}
