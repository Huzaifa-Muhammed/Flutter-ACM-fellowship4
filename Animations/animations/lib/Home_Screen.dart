import 'package:animations/PageAnimations/page_transitions.dart';
import 'package:flutter/material.dart';
import 'package:animations/ExplicitAnimations/explicit_animations.dart';
import 'ImplicitAnimations/implicit_animations.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  double _deviceHeight=0;
  double _deviceWidth=0;

  @override
  Widget build(BuildContext context) {
    _deviceWidth=MediaQuery.of(context).size.width;
    _deviceHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: const Text("Animations"),centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> ImplicitAnimations()));
                  },
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(_deviceWidth*0.45, _deviceHeight*0.3)),
                      backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))
                  ),
                  child: Text("Implicit Animations",style: TextStyle(color: Colors.white,letterSpacing: 3,fontSize:0.08*(_deviceWidth*0.45)),)
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> ExplicitAnimations()));
                },
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(_deviceWidth*0.45, _deviceHeight*0.3)),
                    backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))
                ),
                child: Text("Explicit Animations",style: TextStyle(color: Colors.white,letterSpacing: 3,fontSize:0.08*(_deviceWidth*0.45) )),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> PageTransitions()));
                  },
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(_deviceWidth*0.45, _deviceHeight*0.3)),
                      backgroundColor: MaterialStateProperty.all(Colors.deepOrangeAccent),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))
                  ),
                  child: Text("Page Transitions",style: TextStyle(color: Colors.white,letterSpacing: 3,fontSize:0.08*(_deviceWidth*0.45)),)
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> ExplicitAnimations()));
                },
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(_deviceWidth*0.45, _deviceHeight*0.3)),
                    backgroundColor: MaterialStateProperty.all(Colors.amberAccent),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))
                ),
                child: Text("More Animations",style: TextStyle(color: Colors.white,letterSpacing: 3,fontSize:0.08*(_deviceWidth*0.45))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
