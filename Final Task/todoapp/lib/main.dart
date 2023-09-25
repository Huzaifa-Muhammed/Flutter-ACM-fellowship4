import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(TodoApp());

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      debugShowCheckedModeBanner: false,
      home: TodoList(),
    );
  }
}

class TodoList extends StatefulWidget {
  @override
  createState() => TodoListState();
}

class TodoListState extends State<TodoList> {
  List<String> _todoItems = [];

  void _addTodoItem(String task) {
    setState(() {
      _todoItems.add(task);
    });
  }

  Widget _buildTodoList() {
    return ListView.builder(
      itemBuilder: (context, index) {
        if (index < _todoItems.length) {
          return _buildTodoItem(_todoItems[index]);
        }
      },
    );
  }

  Widget _buildTodoItem(String todoText) {
    return ListTile(title: Text(todoText));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Todo List',style: GoogleFonts.aBeeZee(fontSize: 20),),
        centerTitle: true,
      ),
      body: _buildTodoList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          String newTask = await _navigateAndDisplaySelection(context);
          if (newTask != null) {
            _addTodoItem(newTask);
          }
        },
        tooltip: 'Add task',
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<String> _navigateAndDisplaySelection(BuildContext context) async {
    return await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TodoForm()),
    );
  }
}

class TodoForm extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Todo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _textEditingController,
              decoration: const InputDecoration(
                hintText: 'Enter task...',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, _textEditingController.text);
              },
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
