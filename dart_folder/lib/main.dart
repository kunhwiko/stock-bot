import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home : Home(),
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Colors.grey[900],
      appBar : AppBar(
        title : Text('Stock Bot'),
        centerTitle : true,
        backgroundColor : Colors.grey[850],
        elevation : 0.0,
      ),

      floatingActionButton : FloatingActionButton(
        onPressed:(){
          setState(() {
            name = "Kun Hwi Ko";
          });
        },
      ),

      body : Padding(
        padding : EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children : <Widget>[
            Text(
              'NAME',
              style : TextStyle(
                color : Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height : 10.0),
            Text(
              '$name',
              style : TextStyle(
                color : Colors.amberAccent[200],
                letterSpacing : 2.0,
                fontSize : 20.0,
                fontWeight : FontWeight.bold,
              ),
            ),
            SizedBox(height : 30.0),
            Text(
              'School',
              style : TextStyle(
                color : Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height : 10.0),
            Text(
              'University of Pennsylvania',
              style : TextStyle(
                color : Colors.amberAccent[200],
                letterSpacing : 2.0,
                fontSize : 20.0,
                fontWeight : FontWeight.bold,
              ),
            ),
            SizedBox(height : 30.0),
            Row(
              children : <Widget>[
                Icon(
                  Icons.email,
                  color : Colors.grey[400],
                ),
                SizedBox(width:10.0),
                Text(
                  'kunko@seas.upenn.edu',
                  style : TextStyle(
                    color : Colors.grey[400],
                    fontSize : 10.0,
                    letterSpacing : 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

