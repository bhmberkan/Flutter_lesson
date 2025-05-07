import 'package:flutter/material.dart';
import 'package:flutter_dersleri/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';


void main() {
   // firebase gibi şeyler
   //...
  runApp(const WidgetDetail());
}

class WidgetDetail extends StatefulWidget {
  const WidgetDetail({super.key});

  @override
  State<WidgetDetail> createState() => _WidgetDetailState();
}

class _WidgetDetailState extends State<WidgetDetail> {
  int value= 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.acmeTextTheme()),
      home: Row(
        children: [
          Flexible( 
            flex: 2,
            child: Container(
              color: Colors.amberAccent,
              child: Text("hello asdasdada"),
              ),
          ),
          Flexible(
            child: Container(
                color: Colors.white,
                child: Text("World"),
              ),
          )
        ],
      )
    );
  }
} 

