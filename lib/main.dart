import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text("widget detail"), // bir widgette değişken kullanadıysak const atıyoruz
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          leading: const Text("menü"), // menu ikonlarının geldiği yer 
          // actions: [], // menü gibi sağ üstte bulunan sekme liste alır.
        ),
        body: // Text("Hello flutter"), // sol üste gelecek ortalamak istersek
         Center(
          child: Text(value.toString()), // ortalamak istersek
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

