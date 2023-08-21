import 'package:flutter/material.dart';
import 'package:navigations/main.dart';
import 'package:navigations/secondpage.dart';

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  Color themeColor=Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text (
          'First Page',
          style: TextStyle(
            fontSize: 40
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body:AnimatedContainer(
        duration: const Duration(seconds: 1),
        color: themeColor,
        width: 1500,
        height: 1200,
        child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Container(
                  margin:const EdgeInsets.symmetric(vertical: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(Colors.lightBlueAccent),
                        ),
                          onPressed: (){
                          setState(() {themeColor=Colors.blueGrey;});
                          },
                          child:const Text('Dark Theme',style: TextStyle(color: Colors.white60),)
                      ),
                      ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(Colors.lightBlueAccent),
                          ),
                          onPressed: (){
                            setState(() {themeColor=Colors.white;});
                          },
                          child:const Text('Light Theme',style: TextStyle(color: Colors.white60),)
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {

                        });
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
                          color: Colors.blueAccent,
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
                            MaterialPageRoute(builder: (context)=>SecondPage())
                        );
                      },
                      child: Container(
                        width: 200,
                        height: 50,
                        alignment: Alignment.center,
                        decoration:const BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blueAccent,
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
      ),
    );
  }
}
