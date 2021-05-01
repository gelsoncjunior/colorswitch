import 'package:clipboard/clipboard.dart';
import 'package:colorswitch/controller/color_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<ColorController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor:
            Color.fromRGBO(controller.r, controller.g, controller.b, 1),
        body: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => FlutterClipboard.copy(
                    "#${Color.fromRGBO(controller.r, controller.g, controller.b, 1).value.toRadixString(16).toUpperCase()}"),
                child: Text(
                  "#${Color.fromRGBO(controller.r, controller.g, controller.b, 1).value.toRadixString(16).toUpperCase()}",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: controller.g < 150 ? Colors.white : Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 50),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(
                      () => Text(
                        "R: ${controller.r}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color:
                              controller.g < 150 ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                    Obx(
                      () => Text(
                        "G: ${controller.g}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color:
                              controller.g < 150 ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                    Obx(
                      () => Text(
                        "B: ${controller.b}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color:
                              controller.g < 150 ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RotatedBox(
                      quarterTurns: 3,
                      child: Obx(
                        () => Slider(
                          activeColor: Color.fromRGBO(controller.r, 0, 0, 1),
                          value: controller.r.toDouble(),
                          onChanged: (value) {
                            controller.r = value.toInt();
                          },
                          label: controller.r.toString(),
                          min: 0,
                          max: 255,
                        ),
                      ),
                    ),
                    RotatedBox(
                      quarterTurns: 3,
                      child: Obx(
                        () => Slider(
                          activeColor: Color.fromRGBO(0, controller.g, 0, 1),
                          value: controller.g.toDouble(),
                          onChanged: (value) {
                            controller.g = value.toInt();
                          },
                          label: controller.g.toString(),
                          min: 0,
                          max: 255,
                        ),
                      ),
                    ),
                    RotatedBox(
                      quarterTurns: 3,
                      child: Obx(
                        () => Slider(
                          activeColor: Color.fromRGBO(0, 0, controller.b, 1),
                          value: controller.b.toDouble(),
                          onChanged: (value) {
                            controller.b = value.toInt();
                          },
                          label: controller.b.toString(),
                          min: 0,
                          max: 255,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
