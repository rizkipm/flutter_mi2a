import 'package:flutter/material.dart';

class PageGambar extends StatelessWidget {
  const PageGambar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Singapore'),
      ),

      //buat directory gambar
      //masukin gambar dan rename yang lebih simple nama file nya
      //update puspec.yaml
      //kita pub get atau pub upgrade
      body: Center(
        child: Image.asset('gambar/gambar1.jpeg'),
      ),
    );
  }
}
