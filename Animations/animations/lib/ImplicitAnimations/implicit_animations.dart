import 'package:animations/ImplicitAnimations/Page2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Page1.dart';
import 'Page3.dart';
import 'Page4.dart';

class ImplicitAnimations extends StatefulWidget {

  @override
  State<ImplicitAnimations> createState() => _ImplicitAnimationsState();
}

class _ImplicitAnimationsState extends State<ImplicitAnimations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Implicit Animations",style: GoogleFonts.italiana(letterSpacing: 4,fontWeight: FontWeight.w700,color: Colors.orangeAccent),),centerTitle: true,backgroundColor: Colors.black,),
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
                      MaterialPageRoute(builder: (context)=>Page1())
                    );
                  },
                  child: const Text(("TOM and Jerry Animation"),style: TextStyle(color: Colors.redAccent),)
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15,horizontal: 11),
              color: Colors.teal,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context)=> Page2())
                    );
                  },
                  child: const Text("Text Animation",style: TextStyle(color: Colors.teal),)),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15,horizontal: 21),
              color: Colors.blue,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context)=> Page3())
                    );
                  },
                  child: const Text("Positioned Animation",style: TextStyle(color: Colors.blue),)),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15,horizontal: 31),
              color: Colors.deepOrange,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context)=> Page4())
                    );
                  },
                  child: const Text("Switch to Other widget Animation",style: TextStyle(color: Colors.deepOrange,fontSize: 10),)),
            )
          ],
        ),
      ),
    );
  }
}
