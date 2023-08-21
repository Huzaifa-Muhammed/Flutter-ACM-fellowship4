import 'package:flutter/material.dart';
import 'package:navigations/firstpage.dart';
import 'package:navigations/main.dart';

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text (
          'Second Page',
          style: TextStyle(
              fontSize: 40
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>MyHomePage()),
                      );
                    },
                    child: Container(
                      width: 200,
                      height: 50,
                      alignment: Alignment.center,
                      decoration:const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.redAccent,
                      ),
                      child:const Text(
                        'To Home Page',
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
                          MaterialPageRoute(builder: (context)=>FirstPage())
                      );
                    },
                    child: Container(
                      width: 200,
                      height: 50,
                      alignment: Alignment.center,
                      decoration:const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.redAccent,
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
                ],
              )

            ]
        ),
    );
  }
}
