import 'package:flutter/material.dart';

class PageRowColumn extends StatelessWidget {
  const PageRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Page Row Column'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home,
                  size: 35,
                  color: Colors.red,
                ),
                Text('Home')
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.spa,
                  size: 35,
                  color: Colors.purple,
                ),
                Text('Relax')
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.tab,
                  size: 35,
                  color: Colors.blueAccent,
                ),
                Text('Tab')
              ],
            ),

          ],
        ),
      ),
    );
  }
}
