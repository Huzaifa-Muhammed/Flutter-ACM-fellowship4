import 'dart:ffi';

import 'package:flutter/material.dart';

class EPage2 extends StatefulWidget {
  @override
  State<EPage2> createState() => _EPage2State();
}

class _EPage2State extends State<EPage2> with SingleTickerProviderStateMixin{

  late AnimationController _animationController;

  @override
  void initState() {
    _animationController=AnimationController(
      duration: const Duration(milliseconds: 125),
      vsync: this,
      lowerBound: 1,
      upperBound: 1.75
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Scale Transition"),backgroundColor: Colors.blue,centerTitle: true,),
      body: Center(
        child: GestureDetector(
          onTap: _onTap,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black,style: BorderStyle.solid)
            ),
            child: ScaleTransition(
              scale: _animationController,
              child: const Icon(Icons.favorite,size: 40,),
            ),
          ),
        ),
      ),
    );
  }
  void _onTap(){
    _animationController.forward().then((value) => _animationController.reverse());
  }
}
