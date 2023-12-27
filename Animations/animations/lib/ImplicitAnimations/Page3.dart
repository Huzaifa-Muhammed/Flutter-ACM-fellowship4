import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {

  double _deviceWidth=0;
  double _deviceHeight=0;

  double _jerryTop=50;
  double _jerryLeft=0;

  double _defaultTopPosition=1;
  double _defaultLeftPosition=1;
  bool _isVisible=true;

  @override
  Widget build(BuildContext context) {
    _deviceWidth=MediaQuery.of(context).size.width;
    _deviceHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text("Positioned Animations",style: TextStyle(fontSize: 0.06*_deviceWidth,color: Colors.white,fontWeight: FontWeight.bold),),centerTitle: true,backgroundColor: Colors.blueAccent,),
      body: Stack(
        children: [
          AnimatedPositioned(
            top: _jerryTop,
            left: _jerryLeft,
            curve: Curves.easeInExpo,
            duration: const Duration(seconds: 2),
            child: Image.asset('Assets/Images/jerry.png',height: 100,width: 100,),
          ),
          AnimatedPositioned(
              top: _defaultTopPosition,
              left: _defaultLeftPosition*(0.8*_deviceWidth),
              curve: Curves.bounceInOut,
              duration: const Duration(seconds: 2),
              child: AnimatedOpacity(
                  opacity: _isVisible?1:0,
                  duration: const Duration(seconds: 1),
                  child: Image.asset('Assets/Images/cheese.png',height: 100,width: 100,)
              ),
          ),
          AnimatedPositioned(
              top: _defaultTopPosition*(0.7*_deviceHeight),
              left: _defaultLeftPosition*(0.5*_deviceWidth),
              duration: const Duration(seconds: 2),
              curve: Curves.easeIn,
              child: AnimatedOpacity(
                  opacity: _isVisible?1:0,
                  duration: const Duration(seconds: 1),
                  child: Image.asset('Assets/Images/dog.png',height: 100,width: 100,)
              ),
          ),
          AnimatedPositioned(
            top: 400,
            left: 50,
            duration: const Duration(seconds: 0),
            curve: Curves.bounceOut,
            child: AnimatedOpacity(
              opacity: _isVisible?0:1,
              duration: const Duration(milliseconds: 1),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    if(_jerryTop>0 && _jerryTop-10>=0){
                      _jerryTop=_jerryTop-10;
                    }
                  });
                },
                child: const Icon(Icons.arrow_upward),
              ),
            ),
          ),
          AnimatedPositioned(
            top: 400,
            left: 130,
            duration: const Duration(milliseconds: 0),
            child: AnimatedOpacity(
              opacity: _isVisible?0:1,
              duration: const Duration(seconds: 1),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    if(_jerryTop+10<_deviceHeight-160){
                      _jerryTop=_jerryTop+10;
                    }
                  });
                },
                child: const Icon(Icons.arrow_downward),
              ),
            ),
          ),
          AnimatedPositioned(
            top: 450,
            left: 50,
            duration: const Duration(seconds: 0),
            child: AnimatedOpacity(
              opacity: _isVisible?0:1,
              duration: const Duration(seconds: 1),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    if(_jerryLeft>0 && _jerryLeft-10>=0){
                      _jerryLeft=_jerryLeft-10;
                    }
                  });
                },
                child: const Icon(Icons.arrow_back),
              ),
            ),
          ),
          AnimatedPositioned(
            top: 450,
            left: 130,
            duration: const Duration(seconds: 0),
            child: AnimatedOpacity(
              opacity: _isVisible?0:1,
              duration: const Duration(seconds: 1),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    if(_jerryLeft+10<=_deviceWidth-80){
                      _jerryLeft=_jerryLeft+10;
                    }
                  });
                },
                child: const Icon(Icons.arrow_forward),
              ),
            ),
          ),
          AnimatedPositioned(
            top: (0.4*_deviceHeight),
            left: (0.3*_deviceWidth),
            duration: const Duration(seconds: 1),
            child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    _isVisible=!_isVisible;
                  });
                },
                child: const Text("Jerry Mode")
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if(_defaultLeftPosition==1 && _defaultTopPosition==1){
              _defaultLeftPosition=0;
              _jerryLeft=0;
              _defaultTopPosition=0;
              _jerryTop=0;
            }
            else{
              _defaultLeftPosition=1;
              _defaultTopPosition=1;
            }
          });
        },
        child: const Icon(Icons.horizontal_distribute),
      ),
    );
  }
}
