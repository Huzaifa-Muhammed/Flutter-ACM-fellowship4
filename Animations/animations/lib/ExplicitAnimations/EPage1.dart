import 'package:flutter/material.dart';
class EPage1 extends StatefulWidget {
  @override
  State<EPage1> createState() => _EPage1State();
}

class _EPage1State extends State<EPage1> with SingleTickerProviderStateMixin{

  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController=AnimationController(
        duration: const Duration(seconds: 2),
        vsync: this,
    );
    _animationController.reverse();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Rotation Transition"),backgroundColor: Colors.blue,centerTitle: true,),
      body: RotationTransition(
        turns: Tween<double>(begin: 0,end: 1).animate(_animationController),
        alignment: Alignment.center,
        child: const Center(child: Icon(Icons.cached)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(!_animationController.isAnimating){
            _animationController.repeat();
          }else{
            _animationController.stop();
          }
        },
        child: const Icon(Icons.search),
      ),
    );
  }
}
