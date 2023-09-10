import 'dart:convert';
import 'package:apis/model/user.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List <User> users = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REST APIs',style:GoogleFonts.aboreto(fontSize: 20,letterSpacing: 5)),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder:(context,index) {
            final user=users[index];
            final email=user.email;
            final gender=user.gender;
            final title=user.name.title;
            final first=user.name.first;
            final last=user.name.last;
            final Color textColor;
            gender=='male'?textColor=Colors.blue:textColor=Colors.pinkAccent;
            return ListTile(
              title: Text('$title $first $last',style:GoogleFonts.abyssinicaSil(color: textColor),),
              subtitle: Text(email),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0Wv5zZwrZllu2IWZhXRIW9IzZMKXa6fgTSw&usqp=CAU'),
              ),
            );
          }
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: (){
          fetchUsers();
        },
        child: Text("Get Data",style: GoogleFonts.bahianita(fontSize: 20),),
      ),
    );
  }

  Future<void> fetchUsers() async {
    const String url='https://randomuser.me/api/?results=10';
    final response=await http.get(Uri.parse(url));
    final body=response.body;
    final json=jsonDecode(body);
    final results=json['results'] as List<dynamic>;
    final transform=results.map((e) {
      final name=UserName(title: e['name']['title'], first: e['name']['first'], last: e['name']['last']);
      return User(gender:e['gender'], email:e['email'], cell:e['cell'], phone:e['phone'], nat:e['nat'], name:name);
    }).toList();
    setState(() {
      users=transform;
    });
  }
}
