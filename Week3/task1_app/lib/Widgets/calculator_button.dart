import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final Function callback;
  const CalculatorButton({
    required this.text,
    required this.callback,
});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.all(10),
      child:SizedBox(
        width: 50,
        height: 50,
        child: TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white70,
            padding: const EdgeInsets.all(5),
            backgroundColor: Colors.black38,
          ),
          child:Text(
            text,
            style:const TextStyle(
              fontFamily: 'Baskerville',
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
          onPressed:(){
            callback(text);
          },
        ),
      ),
    );
  }
}


