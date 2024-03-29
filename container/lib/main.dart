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
      appBar: AppBar(title: Text('Container'),), 
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Text('Simple Container'),
                SizedBox(height: 5,),
                Container(
                  color: Colors.lightBlueAccent,
                  height: 100,
                  width: 200,                                              
                ),
                SizedBox(height: 10,),
                Text('Container with Text'),
                SizedBox(height: 5,),
                Container(
                  color: Colors.redAccent,
                  height: 100,
                  width: 200,        
                  child: Center(child: Text('container child')),                                      
                ),
                SizedBox(height: 10,),
                Text('container'),
                SizedBox(height: 5,),
                Container(
                  height: 200,
                  width: 200,                  
                  color: Colors.amberAccent,
                  child: Center(
                    child: Container(
                      height: 150,
                      width: 150,
                      color: Colors.lightGreen, 
                    ),
                  ),
                ), 

                SizedBox(height: 10,), 

                Text('Border Radius'),
                SizedBox(height: 5,),

                Container(
                  height: 200,
                  width: 200,                    
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                ),

                SizedBox(height: 10,), 

                Text('Border'),
                SizedBox(height: 5,),
                Container(
                  height: 200,
                  width: 200,                    
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    border: Border.all(color: Colors.red, width: 2)
                    
                  ),
                )


              ],
            ),
          )
        ],
      ),
    );
  }
}