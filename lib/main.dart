import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '04_flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: Text('04_flutter'),
        ),
        body: new Column(
          children: <Widget>[
            new Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.greenAccent, Colors.yellowAccent],
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        offset: Offset(3.0, 3.0),
                        blurRadius: 2.0)
                  ]),
              transform: Matrix4.rotationZ(-0.3),
              width: 50,
              height: 50,
              child: Icon(
                Icons.kayaking_outlined,
                size: 10,
                color: Colors.white,
                textDirection: TextDirection.ltr,
              ),
            ),
            new Padding(
              padding: EdgeInsets.all(20.0),
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.orange),
                child: Text("hello world"),
              ),
            ),
            new Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.lightBlueAccent, Colors.blueAccent],
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        offset: Offset(3.0, 3.0),
                        blurRadius: 2.0)
                  ]),
              transform: Matrix4.rotationZ(-0.3),
              width: 50,
              height: 50,
              child: Icon(
                Icons.nat_outlined,
                size: 10,
                color: Colors.white,
                textDirection: TextDirection.ltr,
              ),
            ),
            new Row(
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.all(20.0), //???????????????
                  color: Colors.orange,
                  child: Text("hello world"),
                ),
                new Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    //?????????????????????????????????????????????????????????
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Padding(
                        //????????????8????????????
                        padding: EdgeInsets.only(left: 8),
                        child: Text("Hello world"),
                      ),
                      Padding(
                        //???????????????8????????????
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text("I am Jack"),
                      ),
                      Padding(
                        // ?????????????????????????????????
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: Text("Your friend"),
                      )
                    ],
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(top: 50.0, left: 120.0),
                  constraints: BoxConstraints.tightFor(
                      width: 200.0, height: 150.0), //????????????
                  decoration: BoxDecoration(
                    //????????????
                    gradient: RadialGradient(
                      //??????????????????
                      colors: [Colors.red, Colors.orange],
                      center: Alignment.topLeft,
                      radius: .98,
                    ),
                    boxShadow: [
                      //????????????
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 4.0,
                      )
                    ],
                  ),
                  transform: Matrix4.rotationZ(.2), //??????????????????
                  alignment: Alignment.center, //?????????????????????
                  child: Text(
                    //????????????
                    "111",
                    style: TextStyle(color: Colors.lightBlue, fontSize: 40.0),
                  ),
                ),
                new Column(),
                new Center(
                  child: Column(
                    children: [
                      wRow(' 11111111111 '),
                      FittedBox(child: wRow('2222222222222222222')),
                      wRow(' 800 '),
                      FittedBox(child: wRow('33333333333333333333')),
                    ]
                        .map((e) => Padding(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: e,
                            ))
                        .toList(),
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

Widget wRow(String text) {
  Widget child = Text(text);
  child = Row(
    mainAxisAlignment : MainAxisAlignment.spaceEvenly,
    children: [child, child, child],
  );
  return child;
}
