import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../ExplicitAnimations/EPage2.dart';
import '../ExplicitAnimations/EPage3.dart';
import '../ExplicitAnimations/EPage4.dart';
import 'PPage1.dart';

class PageTransitions extends StatefulWidget {
  @override
  State<PageTransitions> createState() => _PageTransitionsState();
}

class _PageTransitionsState extends State<PageTransitions> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page Transitions",style: GoogleFonts.italiana(letterSpacing: 1,fontWeight: FontWeight.w700,color: Colors.orangeAccent),),centerTitle: true,backgroundColor: Colors.black,),
      body: Center(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 1,vertical: 15),
              color: Colors.redAccent,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>PPage1())
                    );
                  },
                  child: const Text(("Rotation Transition"),style: TextStyle(color: Colors.redAccent),)
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15,horizontal: 11),
              color: Colors.teal,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context)=> EPage2())
                    );
                  },
                  child: const Text("Scale Transition",style: TextStyle(color: Colors.teal),)),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15,horizontal: 21),
              color: Colors.blue,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context)=> EPage3())
                    );
                  },
                  child: const Text("Positioned Transition",style: TextStyle(color: Colors.blue),)),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15,horizontal: 31),
              color: Colors.deepOrange,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context)=> EPage4())
                    );
                  },
                  child: const Text("Sized Transition",style: TextStyle(color: Colors.deepOrange),)),
            ),
          ],
        ),
      ),
    );
  }
}
