import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  int _jerryAlign=0;
  Color _jerryBox=Colors.transparent;
  double _jerryBoxWidth=100;
  double _jerryBoxHeight=100;

  int _tomAlign=1;
  Color _tomBox=Colors.transparent;
  double _tomBoxWidth=100;
  double _tomBoxHeight=100;

  double _deviceWidth=0;
  @override
  Widget build(BuildContext context) {
    _deviceWidth=MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Box and Alignment Animations",style: TextStyle(fontSize: 0.05*_deviceWidth),),centerTitle: true,backgroundColor: Colors.redAccent,),
        body: Stack(
          children: [
            AnimatedAlign(
              alignment: getNextAlignment(_jerryAlign),
              duration: const Duration(seconds: 1),
              child: AnimatedContainer(
                width: _jerryBoxWidth,
                height: _jerryBoxHeight,
                color: _jerryBox,
                duration: const Duration(seconds: 2),
                child: Image.asset('Assets/Images/jerry.png')),
              ),
            AnimatedAlign(
              alignment: getNextAlignment(_tomAlign),
              duration: const Duration(seconds: 1),
              curve: Curves.easeInBack,
              child: AnimatedContainer(
                width: _tomBoxWidth,
                height: _tomBoxHeight,
                color: _tomBox,
                duration:const Duration(seconds: 2),
                child: Image.asset('Assets/Images/tom.png')),
            ),
            Container(
              alignment: const Alignment(0.85,0.7),
              child: FloatingActionButton(
                  onPressed: (){
                    setState(() {
                      if(_tomBox==Colors.transparent){
                        _tomBox=Colors.redAccent;
                        _tomBoxWidth=300;
                        _tomBoxHeight=300;
                      }
                      else{
                        _tomBox=Colors.transparent;
                        _tomBoxWidth=100;
                        _tomBoxHeight=100;
                      }
                    });
                  },
                backgroundColor: Colors.grey,
                child: const Text("TOM"),
              ),
            ),
            Container(
              alignment: const Alignment(0.85,0.4),
              child: FloatingActionButton(
                onPressed: (){
                  setState(() {
                    if(_jerryBox==Colors.transparent){
                      _jerryBox=Colors.greenAccent;
                      _jerryBoxWidth=300;
                      _jerryBoxHeight=300;
                    }
                    else{
                      _jerryBox=Colors.transparent;
                      _jerryBoxWidth=100;
                      _jerryBoxHeight=100;
                    }
                  });
                },
                backgroundColor: Colors.grey,
                child: const Text("Jerry"),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              setState(() {
                _jerryAlign++;
                _tomAlign++;
              });
            },
          mouseCursor: MouseCursor.defer,
          backgroundColor: Colors.transparent,
          focusColor: Colors.cyanAccent,
          child: const Icon(Icons.animation),
        ),
      ),
    );
  }
  
  Alignment getNextAlignment(int align){
    switch(align){
      case 1:
        return Alignment.topCenter;
      case 2:
        return Alignment.topRight;
      case 3:
        return Alignment.topLeft;
      case 4:
        return Alignment.center;
      case 5:
        return Alignment.centerLeft;
      case 6:
        return Alignment.centerRight;
      case 7:
        return Alignment.bottomCenter;
      case 8:
        return Alignment.bottomRight;
      case 9:
        return Alignment.bottomLeft;
      default:
        _jerryAlign=0;
        _tomAlign=1;
        return Alignment.center;
    }
  }
}
