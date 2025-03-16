import 'package:flutter/material.dart';
import 'package:flutter_mi2a/screen/nav_bar/page_detail_movie.dart';

class PageGridView extends StatefulWidget {
  const PageGridView({super.key});

  @override
  State<PageGridView> createState() => _PageGridViewState();
}

class _PageGridViewState extends State<PageGridView> {
  //Data List Movie//
  List<Map<String, dynamic>> listMovie = [
    {"judul": "Ciao Alberto", "gambar": "movie1.jpg", "harga": 45000},
    {"judul": "The Simson", "gambar": "movie2.png", "harga": 57000},
    {"judul": "Jungle Cruise", "gambar": "movie3.jpg", "harga": 65000},
    {"judul": "Home Alone", "gambar": "movie4.jpg", "harga": 70000},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: GridView.builder(
          itemCount: listMovie.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              //event Ketika di click
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PageDetailMovie(listMovie[index]),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ClipRect(
                      child: Image.asset(
                        "gambar/${listMovie[index]["gambar"]}",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    child: Column(
                      children: [
                        Text(listMovie[index]["judul"]),
                        Text("Rp. ${listMovie[index]["harga"]}"),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
