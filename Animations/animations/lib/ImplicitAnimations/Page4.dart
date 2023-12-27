import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {

  double _deviceWidth=0;

  bool _isFirstVisible=true;

  @override
  Widget build(BuildContext context) {

    _deviceWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("Swatch Animations",style: TextStyle(fontSize: 0.06*_deviceWidth,color: Colors.white,fontWeight: FontWeight.bold),),centerTitle: true,backgroundColor: Colors.deepOrangeAccent,),
      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(seconds: 2),
          child: TextButton(
            onPressed: () {
              setState(() {
                _isFirstVisible=!_isFirstVisible;
              });
            },
            child: _isFirstVisible?const Text("LogIn"):const CircularProgressIndicator(color: Colors.deepOrangeAccent,),
          ),
        ),
      ),
    );
  }
}
