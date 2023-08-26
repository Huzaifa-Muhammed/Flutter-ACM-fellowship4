import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main()
{
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme:ThemeData(primarySwatch: Colors.grey) ,
      themeMode: ThemeMode.system ,
      home:MyHomePage()
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
          title:Text('My First App',style:GoogleFonts.aboreto()),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YW5pbWF0ZWQlMjBtb3JuaW5nfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'),
            fit: BoxFit.cover,
        )
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image:NetworkImage('https://images.unsplash.com/photo-1692545052139-09d7b8fef762?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),
                    width: 200,
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                  Image(
                    image:AssetImage('assets/images/solider.png'),
                    width:150 ,
                    height: 250,
                    fit: BoxFit.fill,
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://images.unsplash.com/photo-1692317023059-499bf304ef55?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDN8SnBnNktpZGwtSGt8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                    radius: 50,
                  ),
                ],
              ),
              const Column(
                children: [
                  CircleAvatar(
                    radius: 100,
                    child: ClipOval(
                      child: Image(
                        image:AssetImage('assets/images/solider.png'),
                        fit:BoxFit.fill ,
                        width: 150,
                        height: 200,
                      ),
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Hello',style: GoogleFonts.abhayaLibre(fontSize: 40),),
                  Text('Hello',style: GoogleFonts.alegreyaSans(fontSize: 40),),
                  Text('Hello',style: GoogleFonts.ballet(fontSize: 40),)
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
