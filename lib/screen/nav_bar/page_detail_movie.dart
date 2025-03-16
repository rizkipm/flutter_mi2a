import 'package:flutter/material.dart';

class PageDetailMovie extends StatelessWidget {
  //variable untuk menampung isi dari item movie
  final Map<String, dynamic> itemMovie;

  const PageDetailMovie(this.itemMovie, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(itemMovie["judul"])),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "gambar/${itemMovie["gambar"]}",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 300,
                ),
              ),
              SizedBox(height: 15),
              Text(
                itemMovie['judul'],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text("Rp. ${itemMovie['harga']}"),
            ],
          ),
        ),
      ),
    );
  }
}
