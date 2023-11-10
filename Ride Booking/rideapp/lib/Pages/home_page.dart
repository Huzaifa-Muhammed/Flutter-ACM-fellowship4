import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rideapp/Widget/Custom_DropDown_Button.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
late double _deviceHeight;
late double _deviceWidth;
  @override
  Widget build(BuildContext context) {
    _deviceHeight=MediaQuery.of(context).size.height;
    _deviceWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body:SafeArea(
        child:Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth*0.05,vertical: _deviceHeight*0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _titleText(),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  _destinationDropDown(),
                  _carImage(),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _numberOfPessenger(),
                        _ticketType(),
                      ],
                    ),
                  ),
                  _confirmationButton(),
                ],
              )
            ],
          )
        )
      )
    );
  }

Widget _carImage(){
  return Container(
    decoration: const BoxDecoration(
      color: Color.fromRGBO(182, 82, 82, 1),
      image: DecorationImage(image:AssetImage('assets/images/time table.jpg'),
        alignment: Alignment.center,
        scale: 1,
      ),
    ),

  );
}

Widget _titleText(){
  return Text(
    "#Explore Pakistan",
    style: GoogleFonts.damion(
      fontSize: 40,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget _destinationDropDown(){
    return CustomDropDownButton(width: _deviceWidth, items: const ["Chose Destination","Lahore","Karachi","Multan","Quetta"], letterSpace: 5,);
}
Widget _numberOfPessenger(){
    return CustomDropDownButton(width: _deviceWidth/2, items: const["Number of Passengers","1","2","3"], letterSpace: 0.5,);
}
Widget _ticketType(){
  return CustomDropDownButton(width: _deviceWidth/3, items: const["Ticket Type","Economy","Business","First Class","Premium",], letterSpace: 0.5,);
}

Widget _confirmationButton(){
    return Container(
      width: _deviceWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10)
      ),
      child: MaterialButton(
        color: Colors.grey[300],
        onPressed: () {  },
        child: Text("Confirm Order",style: GoogleFonts.cabin(color: Colors.black54,letterSpacing: 5),),
      ),
    );
}

}



