import 'package:flutter/material.dart';

class MyButton  extends StatelessWidget {
  final String value;
  final Function buttonPressing;
  final double font_Size;
  final Color buttonColor;
  final double buttonRadius;
  final Color borderColor;
  const MyButton ({
    required this.value,
    required this.buttonPressing,
    required this.font_Size,
    required this.buttonColor,
    required this.buttonRadius,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:const EdgeInsets.all(1),
        width: 50,
        height: 50,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(buttonRadius),
                      side: BorderSide(color: borderColor)
                  )
              )
          ),
            onPressed: (){
              buttonPressing(value);
              },
            child: Text(
                value,
                style:TextStyle(color: Colors.black,fontSize:font_Size,)
            )
        ),
    );
  }
}
