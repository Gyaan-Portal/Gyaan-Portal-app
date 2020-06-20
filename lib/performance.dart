import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:percent_indicator/percent_indicator.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void build(BuildContext context) {
  double wid = MediaQuery.of(context).size.width;
  double hei = MediaQuery.of(context).size.height;
}
//import 'package:flutter_xlider/flutter_xlider.dart';
// void main() {
//   runApp(
//     MaterialApp(
//       home: Progress(),
//     ),
//   );
// }

class Progress extends StatefulWidget {
  @override
  _ProgressState createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  @override
  double val = 81;
  Widget build(BuildContext context) {
    final wid = MediaQuery.of(context).size.width;
    double hei = MediaQuery.of(context).size.height;
    print('$wid');
    //print('$hei');
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Stack(
                children: [
                  Container(
                    height: hei * 0.3125,
                    width: wid,
                    color: Colors.blue,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 40.0),
                    child: Text(
                      "Lakshman's",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 73.0),
                    child: Row(
                      children: <Widget>[
                        Text("Performance",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18.0)),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 120.0, right: 0.0),
                          child: Container(
                            padding: EdgeInsets.only(right: 50.0),
                            height: 40.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.blue,
                                border: Border.all(
                                    color: Colors.white, width: 2.0)),
                            child: Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "8980",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15.0),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 255.0, top: 115.0),
                    child: Text(
                      "SCORE",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    child: CustomPaint(
                      painter: CurvePainter(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 110.0, left: 130),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(shape: BoxShape.circle,
                          // color: Colors.deepPurple,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0.5, 0.5),
                              color: Colors.black12,
                              spreadRadius: 1.0,
                            ),
                          ]),
                      child: Icon(
                        Icons.account_circle,
                        size: 80,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(padding: const EdgeInsets.only(left: 10.0)),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.purple.withOpacity(0.8)),
                      child: SingleChildScrollView(
                        child: ExpansionTile(
                          backgroundColor: Colors.purple.withOpacity(0.8),
                          title: Text(
                            'Subjects',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          children: [
                            Subject('All Subjects', Colors.transparent, () {
                              setState(() {
                                isVis["b"] = true;
                                isVis["m"] = true;
                                isVis["c"] = true;
                                isVis["p"] = true;
                                radius["p"] = 220;
                                linewid["p"] = 15.0;
                                linewid["m"] = 15.0;
                                linewid["c"] = 15.0;
                                linewid["b"] = 15.0;
                                radius["m"] = 180;
                                radius["b"] = 140;
                                radius["c"] = 100;
                                textvisible["p"] = false;
                                textvisible["m"] = false;
                                textvisible["c"] = false;
                                textvisible["b"] = false;
                              });
                            }),
                            Subject('Physics', Colors.blue, () {
                              setState(() {
                                isVis["b"] = false;
                                isVis["m"] = false;
                                isVis["c"] = false;
                                isVis["p"] = true;
                                radius["p"] = 180;
                                linewid["p"] = 30.0;
                                textvisible["p"] = true;
                              });
                            }),
                            Subject('Maths', Colors.orange, () {
                              setState(() {
                                isVis["b"] = false;
                                isVis["p"] = false;
                                isVis["c"] = false;
                                isVis["m"] = true;
                                radius["m"] = 180;
                                linewid["m"] = 30.0;
                                textvisible["m"] = true;
                              });
                            }),
                            Subject('Chemistry', Colors.green[600], () {
                              setState(() {
                                isVis["b"] = false;
                                isVis["p"] = false;
                                isVis["m"] = false;
                                isVis["c"] = true;
                                radius["c"] = 180;
                                linewid["c"] = 30.0;
                                textvisible["c"] = true;
                              });
                            }),
                            Subject('Biology', Colors.purpleAccent, () {
                              setState(() {
                                isVis["m"] = false;
                                isVis["p"] = false;
                                isVis["c"] = false;
                                isVis["b"] = true;
                                radius["b"] = 180;
                                linewid["b"] = 30.0;
                                textvisible["b"] = true;
                              });
                            }),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(20.0)),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.purple.withOpacity(0.8)),
                      child: ExpansionTile(
                        title: Text(
                          'Month',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        backgroundColor: Colors.purple.withOpacity(0.8),
                        children: [
                          Month('Jan'),
                          Month('Feb'),
                          Month('March'),
                          Month('April'),
                          Month('May'),
                          Month('June'),
                          Month('July'),
                          Month('August'),
                          Month('Sep'),
                          Month('Oct'),
                          Month('Nov'),
                          Month('Dec'),
                        ],
                      ),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(right: 10.0)),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //Icon(MdiIcons.account),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Radial(
                          radius["p"],
                          0.9,
                          linewid["p"],
                          Colors.lightBlue[300],
                          isVis["p"],
                          textvisible["p"]), //p
                      Radial(radius["m"], 0.5, linewid["m"], Colors.orange[600],
                          isVis["m"], textvisible["m"]), //m
                      Radial(radius["c"], 0.8, linewid["c"], Colors.green[600],
                          isVis["c"], textvisible["c"]), //c
                      Radial(
                          radius["b"],
                          0.6,
                          linewid["b"],
                          Colors.purpleAccent,
                          isVis["b"],
                          textvisible["b"]), //b
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 5, 45, 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.thumb_up,
                            color: Colors.blueGrey[500], size: 30.0),
                        Text("Increment"),
                        Text("Decrement"),
                        Icon(Icons.thumb_down,
                            color: Colors.blueGrey[500], size: 30.0),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Trophy('Level', MdiIcons.trophy, '06'),
                      Trophy('Crown', MdiIcons.crown, '06'),
                      Trophy('Badge', MdiIcons.medal, '06'),
                      Trophy('Star', Icons.star, '06'),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //  child: LinearProgressIndicator(value: 0.3,
                    //  backgroundColor: Colors.grey,
                    child: Slider(
                      value: val,
                      min: 80.0,
                      max: 220.0,
                      activeColor: Colors.blue[800],
                      onChanged: (double) {
                        setState(() {
                          val = 105;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 6.0, 8.0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Jan",
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Feb",
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Mar",
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Apr",
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "May",
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "June",
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "July",
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Aug",
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Sep",
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Oct",
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Nov",
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Dec",
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Map<String, bool> isVis = {
  "m": true,
  "b": true,
  "p": true,
  "c": true,
};
Map<String, double> radius = {
  "m": 180.0,
  "b": 100.0,
  "p": 220.0,
  "c": 140.0,
};
Map<String, double> linewid = {
  "m": 15.0,
  "b": 15.0,
  "p": 15.0,
  "c": 15.0,
};
Map<String, bool> textvisible = {
  "m": false,
  "b": false,
  "p": false,
  "c": false,
};

Widget Subject(sub, col, onTap) {
  return InkWell(
    onTap: onTap,
    hoverColor: Colors.black,
    splashColor: Colors.black,
    child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            sub,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Container(
            height: 10,
            width: 10,
            color: col,
          ),
        ],
      ),
      height: 20,
      width: 120,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 0.4, color: Colors.white)),
      ),
    ),
  );
}

Widget Month(mon) {
  return InkWell(
    onTap: () {},
    child: Container(
      child: Text(
        mon,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      height: 20,
      width: 120,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 0.4, color: Colors.white)),
      ),
    ),
  );
}

Widget Radial(r, p, ln, col, vis, textvis) {
  double k = p * 100;
  return Visibility(
    visible: vis,
    child: CircularPercentIndicator(
      radius: r,
      lineWidth: ln,
      animation: true,
      animationDuration: 2000,
      percent: p,
      center: Visibility(
        visible: textvis,
        child: Text(
          "$k%",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
      ),
      circularStrokeCap: CircularStrokeCap.round,
      progressColor: col,
    ),
  );
}

Widget Trophy(name, iconn, no) {
  return Column(
    children: <Widget>[
      Text(
        name,
        style: TextStyle(
          fontSize: 12,
        ),
      ),
      Icon(iconn, color: Colors.blueGrey[500], size: 40.0),
      Container(
        width: 35.0,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            no,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      )
    ],
  );
}

class CurvePainter extends CustomPainter {
  @override
  //double build(BuildContext context){
  //double wid=MediaQuery.of(context).size.width;
  //final double hei=MediaQuery.of(context).size.height;
  //return wid;
  //}
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.blue;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 4.0;
    var path = Path();
    print(size.height);
    // print(MediaQueryData.fromWindow(ui.Window window));
    path.close();
    canvas.drawPath(path, paint);
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;
    path.moveTo(0, 200);
    path.quadraticBezierTo(180, 100, 360, 200);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
