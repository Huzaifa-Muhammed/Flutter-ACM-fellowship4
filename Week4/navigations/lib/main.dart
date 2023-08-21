import 'package:flutter/material.dart';
import 'package:navigations/firstpage.dart';
import 'package:navigations/secondpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text (
          'First Page',
          style: TextStyle(
              fontSize: 40
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 InkWell(
                   onTap: (){
                     Navigator.push(context,
                       MaterialPageRoute(builder: (context)=>FirstPage()),
                     );
                   },
                   child: Container(
                     width: 200,
                     height: 50,
                     alignment: Alignment.center,
                     decoration:const BoxDecoration(
                       shape: BoxShape.rectangle,
                       color: Colors.greenAccent,
                     ),
                     child:const Text(
                       'To First Page',
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 30,
                       ),
                     ) ,
                   ),
                 ),
                 InkWell(
                   onTap: (){
                     Navigator.push(context,
                       MaterialPageRoute(builder: (context)=>SecondPage()),
                     );
                   },
                   child: Container(
                     width: 200,
                     height: 50,
                     alignment: Alignment.center,
                     decoration:const BoxDecoration(
                       shape: BoxShape.rectangle,
                       color: Colors.greenAccent,
                     ),
                     child:const Text(
                       'To Second Page',
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 20,
                       ),
                     ) ,
                   ),
                 ),
               ],
              )
            ]
      ),
    );
  }
}
