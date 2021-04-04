import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AirQControl'),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 20,
              color: Colors.blueAccent[100],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Last updated:    '),
                      Text('11/12/2000 23:59'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              alignment: Alignment.center,
              width: 350.0,
              height: 110.0,
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent[400],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Container(
                alignment: Alignment.center,
                width: 330.0,
                height: 90.0,
                decoration: BoxDecoration(
                  color: Colors.deepOrange[300],
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: Text(
                            'Humidity',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width:170,
                          child: Text(
                            '64',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: Text(
                            "Now\n%"
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 180,
                      height: 33,
                      margin: EdgeInsets.fromLTRB(0, 7, 0, 0),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            padding: EdgeInsets.all(0),
                            icon: Icon(Icons.remove_circle_outline_rounded, size: 26.0,),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Setpoint\n65',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                              icon: Icon(Icons.add_circle_outline_rounded, size: 26.0),
                              padding: EdgeInsets.all(0),
                              onPressed: () {})
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton (
        onPressed:  () {},
        tooltip: 'Help/Settings',
        child: Text(
          '?',
          style: TextStyle(
            fontSize: 31.0,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}


