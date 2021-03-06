import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter FoldingCell',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter FoldingCell'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Color(0xffdfd4f4),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              child: SimpleFoldingCell(
                frontWidget: FrontWidget(),
                innerTopWidget: InnerTopWidget(),
                innerBottomWidget: InnerBottomWidget(),
                cellSize:Size(MediaQuery.of(context).size.width, 175),
                padding:EdgeInsets.all(10.0),
              ),
            ),
            Container(
              child: SimpleFoldingCell(
                frontWidget: FrontWidget(),
                innerTopWidget: InnerTopWidget(),
                innerBottomWidget: InnerBottomWidget(),
                cellSize:Size(MediaQuery.of(context).size.width, 175),
                padding:EdgeInsets.all(10.0),
              ),
            ),
          ],
        ),
      )
    );
  }

  Container FrontWidget() {
    return Container(
      color: Color(0xffdfd4f4),
      alignment: Alignment.center,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Color(0xff6a53a4),
              ),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Today',
                              style: TextStyle(
                                color: Color(0xFFc8b6ea),
                                fontSize: 20.0
                              ),
                            ),
                          )
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('09:15 AM',
                              style: TextStyle(
                                color: Color(0xFFc8b6ea),
                                fontSize: 20.0
                              ),
                            ),
                          )
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Fundamel and Business",
                        style:TextStyle(
                          color: Color(0xff6a53a4),
                          fontSize: 20.0,
                          fontWeight:FontWeight.bold,
                        )
                      ),
                    )
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              FontAwesomeIcons.mapMarkedAlt,
                              color: new Color(0xffF7B928),
                              size: 20.0
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Fundamel and Business",
                              style:TextStyle(
                                color: Color(0xffed1bf7),
                                fontSize: 16.0,
                                fontWeight:FontWeight.bold,
                              )
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                ]
              )
            ),
          ),
        ],
      ),
    );
  }

  Container InnerBottomWidget() {
    return Container(
      color: Colors.white,
    );
  }

  Container InnerTopWidget() {
    return Container(
      color: Color(0xff6a53a4),
      alignment: Alignment.center,
      child: Container(
        child: Column(
          children: <Widget>[
            //Heading
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Details",
                  style:TextStyle(
                    color: Color(0xffed1bf7),
                    fontSize: 16.0,
                    fontWeight:FontWeight.bold,
                  )
                ),
              ),
            ),

            //tilte
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        FontAwesomeIcons.mapMarkedAlt,
                        color: new Color(0xffF7B928),
                        size: 20.0
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Fundamel",
                        style:TextStyle(
                          color: Color(0xffed1bf7),
                          fontSize: 16.0,
                          fontWeight:FontWeight.bold,
                        )
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //Duration
            Container(),

            //Room
            Container(),

            //Priority
            Container(),
          ],
        ),
      ),
    );
  }
}
