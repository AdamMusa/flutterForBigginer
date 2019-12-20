import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Text('Including images from URL'),
            SizedBox(
              child: Image.network(
                  'your url of image'),
              height: 200,
              width: 200,
            ) ,
            SizedBox(height: 10,),
            Text('Getting image from assets '),
            Container(
              height: 200,
              width: 200,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: new DecorationImage(image: new ExactAssetImage('images/hello.png')),
                borderRadius: BorderRadius.all(Radius.circular(50))), 
              ),
              
                         
          ],
        ),
      ),
    );
  }
}
