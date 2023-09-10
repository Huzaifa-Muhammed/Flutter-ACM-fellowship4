import 'package:apis/model/user.dart';
import 'package:apis/services/user_api.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/user_name.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List <User> users = [];

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }
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
            final Color textColor;
            user.gender=='male'?textColor=Colors.blue:textColor=Colors.pinkAccent;
            return ListTile(
              title: Text(user.fullName,style:GoogleFonts.abyssinicaSil(color: textColor),),
              subtitle: Text(user.email),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0Wv5zZwrZllu2IWZhXRIW9IzZMKXa6fgTSw&usqp=CAU'),
              ),
            );
          }
      ),
    );
  }
  Future<void> fetchUsers()async {
    final response=await UserApi.fetchUsers();
    setState(() {
      users=response;
    });
  }
}
