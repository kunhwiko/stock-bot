import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home : Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title : Text(
            'Stock Bot',
            style : TextStyle(
              fontSize : 20.0,
              fontWeight : FontWeight.bold,
              letterSpacing : 2.0,
              color : Colors.grey[300],
            )
        ),
        centerTitle: true,
        backgroundColor: Colors.red[300],
      ),

      body : Center(
        child : Text("This is stock bot!"),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed : () {},
        child : Text("click"),
        backgroundColor : Colors.red[300],
      ),

    );
  }
}


