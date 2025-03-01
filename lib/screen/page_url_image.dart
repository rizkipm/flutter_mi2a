import 'package:flutter/material.dart';

class PageUrlImage extends StatelessWidget {
  const PageUrlImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Page url Image'),
      ),
      
      body: Center(
        child: Image.network('https://awsimages.detik.net.id/community/media/visual/2023/04/14/gambar-pemandangan-6.jpeg?w=3000')
      ),
    );
  }
}
