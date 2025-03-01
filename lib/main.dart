import 'package:flutter/material.dart';
import 'package:flutter_mi2a/screen/page_column.dart';
import 'package:flutter_mi2a/screen/page_gambar.dart';
import 'package:flutter_mi2a/screen/page_list_horizontal.dart';
import 'package:flutter_mi2a/screen/page_row.dart';
import 'package:flutter_mi2a/screen/page_row_column.dart';
import 'package:flutter_mi2a/screen/page_satu.dart';
import 'package:flutter_mi2a/screen/page_url_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PageUtama(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//ketik st
class PageUtama extends StatelessWidget {
  const PageUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App MI 2A'),
        backgroundColor: Colors.purple,
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, //horizal
          crossAxisAlignment: CrossAxisAlignment.center,//vertical
          children: [
            Text('Welcome to MI 2A Apps'),
            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)
                => PageSatu() //berfungsi pindah page
              ));

              //Bikin 2 page untuk page 2 dan 3, kemudian bisa pindah2 dari setiap button
            },
              color: Colors.orange,
              child: Text('Page1', style: TextStyle(fontSize: 14, color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => PageColumn() //berfungsi pindah page
                ));
              },
                elevation: 18.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                color: Colors.orange,
                clipBehavior: Clip.antiAlias,
                child: Text('Page2', style: TextStyle(fontSize: 14, color: Colors.white),),
              ),
            ),
            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)
              => PageRow() //berfungsi pindah page
              ));
            },
              color: Colors.orange,
              child: Text('Page3', style: TextStyle(fontSize: 14, color: Colors.white),),
            ),
            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)
              => PageRowColumn() //berfungsi pindah page
              ));
            },
              color: Colors.orange,
              child: Text('Page 4', style: TextStyle(fontSize: 14, color: Colors.white),),
            ),
            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)
              => PageListHorizontal() //berfungsi pindah page
              ));
            },
              color: Colors.orange,
              child: Text('Page List', style: TextStyle(fontSize: 14, color: Colors.white),),
            ),

            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)
              => PageGambar() //berfungsi pindah page
              ));
            },
              color: Colors.orange,
              child: Text('Page Gambar', style: TextStyle(fontSize: 14, color: Colors.white),),
            ),

            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)
              => PageUrlImage() //berfungsi pindah page
              ));
            },
              color: Colors.orange,
              child: Text('Page Url Image', style: TextStyle(fontSize: 14, color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}

