import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  double _fontSize=20;
  bool _isVisible=true;

  double _deviceWidth=0;

  @override
  Widget build(BuildContext context) {
    _deviceWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("Text Size and opacity Animation",style: TextStyle(fontSize: 0.04*_deviceWidth,color: Colors.white,fontWeight: FontWeight.bold),),centerTitle: true,backgroundColor: Colors.teal,),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50,bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedOpacity(
                    opacity: _isVisible?1.0:0.0,
                    duration: const Duration(seconds: 1),
                    curve: Curves.bounceIn,
                    child: Column(
                      children: [
                        Text("Huzaifa",style: TextStyle(fontSize:_fontSize ,color: Colors.greenAccent,),),
                      ],
                    )
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _fontSize=_fontSize+0.5;
                  });
                },
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: (){
                  setState(() {
                    _fontSize=_fontSize-0.5;
                  });
                },
                child: const Icon(Icons.remove),
              ),
              FloatingActionButton(
                onPressed: (){
                  setState(() {
                    _isVisible=!_isVisible;
                  });
                },
                child: Icon(_isVisible?Icons.visibility:Icons.visibility_off),
              ),
            ],
          )
        ],
      ),
    );
  }
}
