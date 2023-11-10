import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDropDownButton extends StatelessWidget{
  final List<String> items;
  final double width;
  final double letterSpace;
  CustomDropDownButton({required this.width,required this.items,required this.letterSpace});
  @override
  Widget build(BuildContext context) {
    var value1=items.first;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width*0.05),
      width: width,
      alignment: Alignment.center,
      decoration: const BoxDecoration
        (
          color: Color.fromRGBO(53, 53, 53, 1),
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: DropdownButton
        (
          value: value1,
          items: items.map((e){
            return DropdownMenuItem(
              value: e,
              child: Text(e),
            );
          }).toList(),
          underline: Container(),
          dropdownColor: const Color.fromRGBO(100, 100, 100, 1),
          style: GoogleFonts.cabin(color: Colors.grey[400],letterSpacing: letterSpace),
          onChanged: (_){
          }
      ),
    );
  }


}