import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart';

void main(){
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
      home: DefaultTabController(
        length: 5,
        child: new Scaffold(
          body: TabBarView(
            children: [
              new Column(
                children: [
                  Row(
                    children : <Widget>[
                      Container(
                        child:
                      ),
                    ],
                  ),
                  Container(
                    child : Image(
                      image : AssetImage('assets/image1.png'),
                    ),
                    color : Colors.white,
                  ),
                ],
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
            unselectedLabelColor: Colors.pink[50],
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.amber,
          ),
          backgroundColor: Colors.indigo[200],
        ),
      ),
    );
  }
}