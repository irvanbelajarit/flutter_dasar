import 'package:flutter/material.dart';

class MakeItClik extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MakeItClikState();
  }
}

class MakeItClikState extends State<MakeItClik> {
  int _clickCounter = 0;

  void _rainClick(){
    setState(() {
      _clickCounter++;
    });

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make It Click!"),
        backgroundColor: Colors.lightGreen,
      ),
      body: new Container(
        child: new Column(
          children: [
            new Center(
              child: new Text(
                "Get Click",
                style: new TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 29.9),
              ),
            ),
            new Expanded(
                child: new Center(
                  child: new Text("$_clickCounter Klik",style: new TextStyle(
                    color: _clickCounter > 25 ? Colors.greenAccent : Colors.red,
                    fontSize: 46.9,
                    fontWeight: FontWeight.w800
                  ),),
                )),
            new Expanded(
                child: new Center(
                  child: new TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.lightGreen,
                      foregroundColor: Colors.white,

                    ),
                      onPressed: _rainClick,
                      child: new Text("Di Klik!",style: new TextStyle(fontSize: 19.9),)),
                ))
          ],
        ),

      ),
    );
  }
}
