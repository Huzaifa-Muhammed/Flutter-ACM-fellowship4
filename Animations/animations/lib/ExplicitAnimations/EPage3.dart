import 'package:flutter/material.dart';

class EPage3 extends StatefulWidget {
  @override
  State<EPage3> createState() => _EPage3State();
}

class _EPage3State extends State<EPage3> with SingleTickerProviderStateMixin{
  late AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _animationController=AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Positioned Transition"),backgroundColor: Colors.blue,centerTitle: true,),
      body: Stack(
        fit: StackFit.expand,
        children: [
          PositionedTransition(
              rect: RelativeRectTween(begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
              end:const RelativeRect.fromLTRB(50, 50, 0, 0)).animate(_animationController),
              child: Container(color: Colors.grey,child: Image.asset('Assets/Images/dog.png')),
          ),
          PositionedTransition(
              rect: RelativeRectTween(begin: const RelativeRect.fromLTRB(0, 0, 0, 0),end: const RelativeRect.fromLTRB(150, 150, 0, 0)).animate(_animationController),
              child: Container(color:Colors.blueGrey,child: Image.asset('Assets/Images/tom.png')),
          ),
          PositionedTransition(
              rect: RelativeRectTween(begin: const RelativeRect.fromLTRB(0, 0, 0, 0),end: const RelativeRect.fromLTRB(250, 250, 0, 0)).animate(_animationController),
              child: Container(color:Colors.orangeAccent,child: Image.asset('Assets/Images/jerry.png'))
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: (){
                    _animationController.forward();
                  },
                  child: const Icon(Icons.start)
              ),
              ElevatedButton(
                  onPressed: (){
                    _animationController.reverse();
                  },
                  child: const Icon(Icons.stop)
              ),
            ],
          ),
        ],
      ),
    );
  }
}
