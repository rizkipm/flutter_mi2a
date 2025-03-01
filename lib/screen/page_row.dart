import 'package:flutter/material.dart';

class PageRow extends StatelessWidget {
  const PageRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Page Row'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Icon(Icons.safety_check,
              size: 40,
              color: Colors.greenAccent,
            ),
            Icon(Icons.screen_rotation,
                size: 40,
                color: Colors.blueAccent
            ),
            Icon(Icons.phone,
                size: 40,
                color: Colors.orange
            ),

          ],
        ),
      ),
    );
  }
}
