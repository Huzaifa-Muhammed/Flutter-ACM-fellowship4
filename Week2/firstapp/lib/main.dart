import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main()
{
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key }) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme:ThemeData(primarySwatch: Colors.grey) ,
      themeMode: ThemeMode.system ,
      home: const MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {

  const MyHomePage({Key? key }) :super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title:const Text('My First App'),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
      body: Center(
        child: Container(
          width: 200,
          height: 200, 
          color: Colors.lightGreen,
          child: const Center(
              child:Text(
                'hello',
                style:TextStyle(
                  fontSize: 20,
                  letterSpacing: 2,
                  color: Colors.deepOrangeAccent,
                  height: 10,
                  wordSpacing: 3,
                  fontFamily: 'cursive',
                ),
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
                textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: true),
              )
          ),
        ),
      ),
      floatingActionButton:FloatingActionButton(
        elevation: 20.0,
        child:const Icon(Icons.call_end_rounded),
        onPressed: (){
        },
      )
    );
  }
}
