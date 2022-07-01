import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'homework_04_Container',
      home: new Scaffold(
        appBar: new AppBar(
          title: Text('homework_04_Container'),
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
                child: Text("Hello world!"),
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
                  margin: EdgeInsets.all(20.0), //容器外补白
                  color: Colors.orange,
                  child: Text("Hello world!"),
                ),
                new Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    //显式指定对齐方式为左对齐，排除对齐干扰
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Padding(
                        //左边添加8像素补白
                        padding: EdgeInsets.only(left: 8),
                        child: Text("Hello world"),
                      ),
                      Padding(
                        //上下各添加8像素补白
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text("I am Jack"),
                      ),
                      Padding(
                        // 分别指定四个方向的补白
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: Text("Your friend"),
                      )
                    ],
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(top: 50.0, left: 120.0),
                  constraints: BoxConstraints.tightFor(
                      width: 200.0, height: 150.0), //卡片大小
                  decoration: BoxDecoration(
                    //背景装饰
                    gradient: RadialGradient(
                      //背景径向渐变
                      colors: [Colors.red, Colors.orange],
                      center: Alignment.topLeft,
                      radius: .98,
                    ),
                    boxShadow: [
                      //卡片阴影
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 4.0,
                      )
                    ],
                  ),
                  transform: Matrix4.rotationZ(.2), //卡片倾斜变换
                  alignment: Alignment.center, //卡片内文字居中
                  child: Text(
                    //卡片文字
                    "5.20",
                    style: TextStyle(color: Colors.white, fontSize: 40.0),
                  ),
                ),
                new Column(),
                new Center(
                  child: Column(
                    children: [
                      wRow(' 90000000000000000 '),
                      FittedBox(child: wRow(' 90000000000000000 ')),
                      wRow(' 800 '),
                      FittedBox(child: wRow(' 800 ')),
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
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [child, child, child],
  );
  return child;
}
