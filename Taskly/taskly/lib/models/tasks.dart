class Task{
  String content;
  DateTime timeLap;
  bool done;

  Task({
    required this.content,
    required this.timeLap,
    required this.done
  });

  factory Task.fromMap(Map task){
    return Task(
        content: task["content"],
        timeLap: task["timeLap"],
        done: task["done"]
    );
  }

  Map toMap(){
    return{
      "content":content,
      "timeLap":timeLap,
      "done":done,
    };
  }
}