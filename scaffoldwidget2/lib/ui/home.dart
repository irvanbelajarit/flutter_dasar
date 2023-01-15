import 'package:flutter/material.dart';

class Home extends StatelessWidget{

  void _onPress(){
    print("Search Tapped");
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.greenAccent.shade700,
        title: new Text("App Scaffold"),

        actions: [
          new IconButton(onPressed: ()=>debugPrint("print icon tapped"), icon: new Icon(Icons.send)),
          new IconButton(onPressed: _onPress, icon: new Icon(Icons.search))
        ],
      ),

      backgroundColor: Colors.grey.shade100,
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text("Irvan",style: new TextStyle(fontSize: 14.5,fontWeight: FontWeight.w400,color: Colors.deepOrange),),
            new InkWell(
              child: new Text('Button!'),
              onTap: ()=>debugPrint("Button Tapped"),
            ),
          ],
        ),
      ),


    );
  }
}