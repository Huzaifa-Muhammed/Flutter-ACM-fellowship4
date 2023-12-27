import 'package:animations/PageAnimations/PPage2.dart';
import 'package:animations/PageAnimations/page_transitions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PPage1 extends StatefulWidget {
  @override
  State<PPage1> createState() => _PPage1State();
}

class _PPage1State extends State<PPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap:(){
            Get.to(PPage2());
          },
          child: Text(
            "Hello"
          ),
        ),
      ),
    );
  }
}
