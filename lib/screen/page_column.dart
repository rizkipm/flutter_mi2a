import 'package:flutter/material.dart';

class PageColumn extends StatelessWidget {
  const PageColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Page Column'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,//secara horizal
          // crossAxisAlignment: CrossAxisAlignment.center, //secara vertical
          children: [
            Text("Ini teks satu"),
            Text("Ini teks dua"),
            Text('Ini Teks tiga')
          ],
        ),
      ),
    );
  }
}
