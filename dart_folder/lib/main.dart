import 'package:flutter/material.dart';
import 'parseJson.dart';
import 'package:charts_flutter/flutter.dart';

void main(){
  parseJson();
  return runApp(Home());
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      home: DefaultTabController(
        length: 5,
        child: new Scaffold(
          body: TabBarView(
            children: [
              new Container(
                color: Colors.red[300],
              ),
              new Container(
                color: Colors.amber[300],
              ),
              new Container(
                color: Colors.lightGreen,
              ),
              new Container(
                color: Colors.lightBlue[300],
              ),
              new Container(
                color: Colors.deepPurple[100],
              ),
            ],
          ),
          bottomNavigationBar: new TabBar(
            tabs: [
              Tab(
                icon: new Icon(Icons.filter_1),
              ),
              Tab(
                icon: new Icon(Icons.filter_2),
              ),
              Tab(
                icon: new Icon(Icons.filter_3),
              ),
              Tab(
                icon: new Icon(Icons.filter_4),
              ),
              Tab(icon: new Icon(Icons.filter_5),)
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Colors.amber,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.amber,
          ),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}