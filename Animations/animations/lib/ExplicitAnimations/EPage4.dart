import 'package:flutter/material.dart';

class EPage4 extends StatefulWidget {
  @override
  State<EPage4> createState() => _EPage4State();
}

class _EPage4State extends State<EPage4> with SingleTickerProviderStateMixin{

  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController=AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2)
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sized Transition"),backgroundColor: Colors.blue,centerTitle: true,),
      body: Center(
        child: GestureDetector(
          onTap: _onTap,
          child: Container(
            color: Colors.blue[300],
            width: 200,
            height: 200,
            child: Center(
              child: SizeTransition(
                sizeFactor: Tween<double>(begin: 0,end: 1).animate(CurvedAnimation(parent: _animationController, curve: Curves.bounceInOut)),
                child: Container(
                  color: Colors.amberAccent,
                  width: 100,
                  height:100,
                  child: Image.asset('Assets/Images/dog.png'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  void _onTap(){
    _animationController.reset();
    _animationController.forward();
  }
}
