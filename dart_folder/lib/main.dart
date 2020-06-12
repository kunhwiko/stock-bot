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
                    mainAxisAlignment : MainAxisAlignment.center,
                    children : <Widget>[
                      Expanded(
                        child : Container(
                          padding : EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 25.0),
                          child: Text('Stock 1',),
                          color : Colors.red[200],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children : <Widget>[
                      Expanded(
                        child : Container(
                          padding : EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 10.0),
                          color : Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child : Image(
                      image : AssetImage('assets/image1.png'),
                    ),
                    color : Colors.white,
                  ),
                  Row(
                    children : <Widget>[
                      Expanded(
                        child : Container(
                          padding : EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 25.0),
                          color : Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children : <Widget>[
                      Expanded(
                        child : Container(
                          padding : EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          child: Text('    Profit  :  '),
                          color : Colors.white,
                        ),
                      ),
                      Expanded(
                        child : Container(
                          color : Colors.white,
                          child: IconButton(
                            onPressed: (){},
                            icon : Icon(Icons.assessment),
                            color : Colors.red[200],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children : <Widget>[
                      Expanded(
                        child : Container(
                          padding : EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
                          color : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              new Column(
                children: [
                  Row(
                    mainAxisAlignment : MainAxisAlignment.center,
                    children : <Widget>[
                      Expanded(
                        child : Container(
                          padding : EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 25.0),
                          child: Text('Stock 2'),
                          color : Colors.orange[200],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children : <Widget>[
                      Expanded(
                        child : Container(
                          padding : EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 10.0),
                          color : Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child : Image(
                      image : AssetImage('assets/image2.png'),
                    ),
                    color : Colors.white,
                  ),
                  Row(
                    children : <Widget>[
                      Expanded(
                        child : Container(
                          padding : EdgeInsets.fromLTRB(20.0, 35.0, 20.0, 100.0),
                          color : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
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
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey[500],
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.white,
          ),
          backgroundColor: Colors.grey[100],
        ),
      ),
    );
  }
}