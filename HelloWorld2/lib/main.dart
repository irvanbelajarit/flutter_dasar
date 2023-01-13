import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo 2'),
          backgroundColor: Colors.teal,
        ),
        body: Center(
         child: Column(
           children: [
             Image(
               image: NetworkImage(
                   'https://cdn.pixabay.com/photo/2023/01/05/08/17/bird-7698384_960_720.jpg'
               ),
             ),
             Text('Hello World 2'),
           ],
         )
    )
    ),
    );
  }
}
