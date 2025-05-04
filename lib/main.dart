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
      home: Scaffold(
        appBar: AppBar(
          title: const Text("widget detail"), // bir widgette değişken kullanadıysak const atıyoruz
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          leading:  Text("menü", 
          style: TextStyle(
            color: HexColor(AppColors.primaryColor
            ),
            ),
            ), // menu ikonlarının geldiği yer 
          // actions: [], // menü gibi sağ üstte bulunan sekme liste alır.
        ),
        body: Container(
         // padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 40.0), //only(left: 20.0, top: 10.0),  //fromLTRB(40, 5, 20, 10), //EdgeInsets.all(20.0),
          margin: const EdgeInsets.all(20.2),
          color: Colors.green,
          child: const Text("örnek"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              value = value + 1;
            });
          },
          child: const Text("+"),
        ),
      ),
    );
  }
}

