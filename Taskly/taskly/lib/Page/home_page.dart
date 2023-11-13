import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:taskly/models/tasks.dart';

class HomePage extends StatefulWidget{
  HomePage();
  @override
  State<StatefulWidget> createState()=>_HomePageState();

}
class _HomePageState extends State<HomePage>{
  late double deviceWidth;
  late double deviceHeight;
  String? newTaskContent;
  Box? _box;
  _HomePageState();
  @override
  Widget build(BuildContext context) {
    deviceHeight=MediaQuery.of(context).size.height;
    deviceWidth=MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          toolbarHeight: deviceHeight*0.15,
          title: Text("Taskly",style: GoogleFonts.aboreto(fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 15),),
          centerTitle: true,
        ),
        body:taskView(),
        floatingActionButton: addTaskButton(),
      ),
    );
  }

  Widget taskView(){
    return FutureBuilder(future: Hive.openBox('tasks'), builder: (BuildContext context,AsyncSnapshot snapshot){
      if(snapshot.hasData){
        _box=snapshot.data;
        return listView();
      }else{
        return const Center(child:CircularProgressIndicator(color: Colors.cyanAccent,));
      }
    });
  }


  Widget listView(){
    List tasks=_box!.values.toList();
    return ListView.builder(itemCount: tasks.length,itemBuilder: (BuildContext context,int index){
      var task=Task.fromMap(tasks[index]);
      return ListTile(
        title: Text(task.content.toString(), style: TextStyle(
            decoration: task.done?TextDecoration.lineThrough:null,decorationColor: Colors.red
        )
        ),
        subtitle: Text(task.timeLap.toString()),
        trailing: Icon(task.done?Icons.check_box_rounded:Icons.check_box_outline_blank,color: Colors.cyan,),
        onTap: (){
          task.done=!task.done;
          _box!.putAt(index, task.toMap());
          setState(() {
          });
        },
        onLongPress: (){
          _box!.delete(index);
          setState(() {
          });
        },
      );
    });
  }


  Widget addTaskButton(){
    return FloatingActionButton(
      onPressed: displayTaskPopUp,
      child:const Icon(Icons.add,color: Colors.blueGrey,),
    );
  }


  void displayTaskPopUp(){
    showDialog(context: context, builder: (BuildContext _context){
      return AlertDialog(
        title: const Text("Add Task"),
        content: TextField(
          onSubmitted: (_){
            if(newTaskContent!=null){
              var _task=Task(content: newTaskContent!, timeLap: DateTime.now(), done: false);
              _box!.add(_task.toMap());
            }
            setState(() {
              newTaskContent=null;
              Navigator.pop(context);
            });
          },
          onChanged: (value){
            setState(() {
              newTaskContent=value;
            });
          },
        ),
      );
    });
  }


}