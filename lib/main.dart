import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:kreyative/feedback.dart';

import 'package:kreyative/try.dart';
import 'package:kreyative/videoslider.dart';
import 'package:lottie/lottie.dart';
import 'package:shimmer/shimmer.dart';
import 'package:getflutter/getflutter.dart';
import 'package:quiver/async.dart';
import 'package:flutter_timer/flutter_timer.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'dart:io';
import './bunny.dart';

import 'package:flutter_otp/flutter_otp.dart';
import './sms.dart';

import './carousel.dart';
import './videoslider.dart';
import 'package:google_fonts/google_fonts.dart';

import './videopage.dart';
import './performance.dart';
import './zoommain.dart';
import './join_screen.dart';
import './meeting_screen.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:carousel_slider/carousel_slider.dart';
//import './intern.dart';
//import './doubt.dart';
//import './internship.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import './try.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StartRoute(),
  ));
}

class StartRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: PageNewDemo(),
        ),
      ),
    );
  }
}

class PageNewDemo extends StatefulWidget {
  @override
  _PageNewDemoState createState() => _PageNewDemoState();
}

class _PageNewDemoState extends State<PageNewDemo> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        Page1Widget(),
        Page2Widget(),
        Page3Widget(),
        Page4Widget(),
      ],
    );
  }
}

class Page1Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    Image.asset('assets/pehla.png', width: 300, height: 400),
                  ],
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      textColor: Colors.black,
                      color: Colors.white,
                      child: Text('Slide for next>>>>',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GradeLevel()),
                        );
                        //signup screen
                      },
                    )),
              ],
            )));
  }
}

class Page2Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    Image.asset('assets/dusra.png', width: 300, height: 400),
                    Container(
                        alignment: Alignment.center,
                        child: Text('Live classes and video lecture',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ))),
                    Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
                      child: GFButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyApp()),
                          );
                        },
                        text: "Skip",
                        color: Hexcolor('#6002EE'),
                        size: GFSize.SMALL,
                        type: GFButtonType.outline,
                      ),
                    ),
                  ],
                ),
              ],
            )));
  }
}

class Page3Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    Image.asset('assets/teesra.png', width: 300, height: 400),
                    Container(
                        alignment: Alignment.center,
                        child: Text('Doubt forums to clear doubts',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ))),
                    Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
                      child: GFButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyApp()),
                          );
                        },
                        text: "Skip",
                        color: Hexcolor('#6002EE'),
                        size: GFSize.SMALL,
                        type: GFButtonType.outline,
                      ),
                    ),
                  ],
                ),
              ],
            )));
  }
}

class Page4Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    Image.asset('assets/chautha.png', width: 300, height: 400),
                    Container(
                        alignment: Alignment.center,
                        child: Text(
                            'E-learning and important resources at one place',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ))),
                    Container(
                        height: 40,
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          textColor: Colors.white,
                          color: Hexcolor('#6002EE'),
                          child: Text('CONTINUE',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              )),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyApp()),
                            );
                          },
                        )),
                  ],
                ),
              ],
            )));
  }
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

class _State extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(15),
            child: ListView(
              children: <Widget>[
                Container(
                    child: Row(
                  children: <Widget>[
                    Text(
                      'Login           ',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                    ),
                    FlatButton(
                      textColor: Colors.black45,
                      child: Text(
                        '         Sign up',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondRoute()),
                        );
                        //signup screen
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                )),
                new Column(
                  children: <Widget>[
                    Image.asset('assets/mansit.png', width: 200, height: 220),
                  ],
                ),
                Container(
                    alignment: Alignment.center,
                    child: Text('Hello There',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ))),
                Container(
                    alignment: Alignment.center,
                    child: Text('Please login',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                              fontSize: 25),
                        ))),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                      labelText: 'Email Id',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(right: 160),
                    child: FlatButton(
                      textColor: Hexcolor('#6002EE'),
                      color: Colors.white,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(fontSize: 16),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondRoute()),
                        );
                      },
                    )),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      textColor: Colors.white,
                      color: Hexcolor('#6002EE'),
                      child: Text('LOGIN',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                      onPressed: () async {
                        FirebaseUser firebaseUser;
                        firebaseAuth
                            .signInWithEmailAndPassword(
                                email: 'demo@gmail.com', password: 'demo123')
                            .then((authResult) {
                          setState(() {
                            firebaseUser = authResult.user;
                          });
                          print(firebaseUser.email);
                        });

                        print(nameController.text);
                      },
                    )),
                Container(
                    padding: EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    child: Text(
                      'or login with',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black45),
                    )),
                Container(
                  child: IconButton(
                    icon: Image.asset('assets/goggle.png'),
                    color: Colors.white,
                    padding: EdgeInsets.all(10),
                    iconSize: 85,
                    splashColor: Colors.grey,
                    onPressed: _signInWithGoogle,
                  ),
                ),
              ],
            )));
  }

  _signInWithGoogle() async {
    final GoogleSignInAccount googleUser = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
        idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);

    final FirebaseUser user =
        (await firebaseAuth.signInWithCredential(credential)).user;
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    child: Row(
                  children: <Widget>[
                    Text(
                      'Login           ',
                      style: TextStyle(fontSize: 22),
                    ),
                    FlatButton(
                      textColor: Colors.black,
                      child: Text(
                        '         Sign up',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w800),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondRoute()),
                        );
                        //signup screen
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                )),
                new Column(
                  children: <Widget>[
                    Image.asset('assets/Logogyaan.png',
                        width: 200, height: 230),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Full Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Registration Number',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mobile Number',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email Id',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      textColor: Colors.white,
                      color: Hexcolor('#6002EE'),
                      child: Text('SIGN UP',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ThirdRoute()),
                        );
                        //signup screen
                      },
                    )),
                Container(
                    padding: EdgeInsets.only(top: 25),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'By signing up,you agree to our',
                          style: TextStyle(fontSize: 13),
                        ),
                        FlatButton(
                          textColor: Hexcolor('#6002EE'),
                          child: Text(
                            'Terms & Conditions',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecondRoute()),
                            );
                            //signup screen
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    )),
              ],
            )));
  }
}

class ThirdRoute extends StatelessWidget {
  void sendOtp(String phoneNumber, [String messageText]) {
    sendOtp('9971715927', 'OTP for verification is : ');
  }

  String enteredOtp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    new Icon(
                      Icons.verified_user,
                      color: Colors.indigoAccent,
                      size: 130.0,
                    )
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Verification code',
                    style: GoogleFonts.oswald(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 28),
                    ),
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Please enter the 4-digit code sent to 9928382345',
                      style: TextStyle(color: Colors.black54, fontSize: 22),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    onChanged: (val) {
                      enteredOtp = val;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      counterText: 'Time remaining 2:00',
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: false,
                  ),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      textColor: Colors.white,
                      color: Hexcolor('#6002EE'),
                      child: Text('Verify',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Success()),
                        );
                        //signup screen
                      },
                    )),
              ],
            )));
  }
}

class Success extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    Lottie.asset('assets/8222-success.json',
                        width: 300, height: 300),
                  ],
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 2),
                    child: Text('Sign up successful',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(12),
                    child: Text(
                        'You have successfully signed up with our app and services',
                        style: GoogleFonts.poppins(
                          textStyle:
                              TextStyle(color: Colors.black54, fontSize: 18),
                        ))),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      textColor: Colors.white,
                      color: Hexcolor('#6002EE'),
                      child: Text('Continue',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GradeLevel()),
                        );
                        //signup screen
                      },
                    )),
              ],
            )));
  }
}

class GradeLevel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    Lottie.asset('assets/21903-online-class-animation.json',
                        width: 300, height: 250),
                  ],
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Select Grade Level',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w800,
                          fontSize: 28),
                    )),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        GFButton(
                          color: Colors.white70,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Course()),
                            );
                          },
                          child: Image.asset('assets/abc.png'),
                          size: 120,
                          textColor: Colors.black,
                          elevation: 15,
                          splashColor: Colors.brown,
                          shape: GFButtonShape.square,
                        ),
                        GFButton(
                          color: Colors.white70,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Course()),
                            );
                          },
                          child: Image.asset('assets/scaletwo.png'),
                          size: 130,
                          textColor: Colors.black,
                          elevation: 15,
                          splashColor: Colors.brown,
                          shape: GFButtonShape.square,
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    )),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        GFButton(
                          color: Colors.white70,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Course()),
                            );
                          },
                          child: Image.asset('assets/secondtwo.png'),
                          size: 125,
                          textColor: Colors.black,
                          elevation: 15,
                          splashColor: Colors.brown,
                          shape: GFButtonShape.square,
                        ),
                        GFButton(
                          color: Colors.white70,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Year()),
                            );
                          },
                          child: Image.asset('assets/engi.png'),
                          size: 115,
                          textColor: Colors.black,
                          elevation: 15,
                          splashColor: Colors.brown,
                          shape: GFButtonShape.square,
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    )),
              ],
            )));
  }
}

class Year extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    Image.asset('assets/scholar.png', width: 300, height: 220),
                  ],
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Choose your year',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w800,
                          fontSize: 28),
                    )),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        GFButton(
                          color: Colors.white70,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Homepagenew()),
                            );
                          },
                          child: Image.asset('assets/one.png'),
                          size: 125,
                          textColor: Colors.black,
                          elevation: 15,
                          splashColor: Colors.brown,
                          shape: GFButtonShape.square,
                        ),
                        GFButton(
                          color: Colors.white70,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Homepagenew()),
                            );
                          },
                          child: Image.asset('assets/two.png'),
                          size: 120,
                          textColor: Colors.black,
                          elevation: 15,
                          splashColor: Colors.brown,
                          shape: GFButtonShape.square,
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    )),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        GFButton(
                          color: Colors.white70,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Homepagenew()),
                            );
                          },
                          child: Image.asset('assets/three.png'),
                          size: 120,
                          textColor: Colors.black,
                          elevation: 15,
                          splashColor: Colors.brown,
                          shape: GFButtonShape.square,
                        ),
                        GFButton(
                          color: Colors.white70,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Homepagenew()),
                            );
                          },
                          child: Image.asset('assets/fourtwo.png'),
                          size: 122,
                          textColor: Colors.black,
                          elevation: 15,
                          splashColor: Colors.brown,
                          shape: GFButtonShape.square,
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    )),
              ],
            )));
  }
}

class Course extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    Lottie.asset('assets/18833-refresh.json',
                        width: 200, height: 200),
                  ],
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Choose your course',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w800,
                          fontSize: 28),
                    )),
                Container(
                    height: 70,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 25,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/5th.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      '5th Grade',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    height: 70,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 25,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/6th.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      '6th Grade',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    height: 70,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 25,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/7th.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      '7th Grade',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    height: 70,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 25,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/8th.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      '8th Grade',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    height: 70,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 25,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/9th.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      '9th Grade',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    height: 70,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 25,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/10th.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      '10th Grade',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    height: 70,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 25,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/11th.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      '11th Grade',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    height: 70,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 25,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/12th.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      '12th Grade',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
              ],
            )));
  }
}

class IntroductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.deepOrange, Colors.orangeAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
            padding: EdgeInsets.all(40),
            child: ListView(
              children: <Widget>[
                new Column(),
                SizedBox(
                  width: 200.0,
                  height: 200,
                  child: Shimmer.fromColors(
                    baseColor: Colors.black87,
                    highlightColor: Colors.white,
                    child: Text(
                      'Welcome \nLakshman!\n\n #Lets learn',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                    height: 85,
                    width: 45,
                    padding: EdgeInsets.fromLTRB(50, 20, 55, 0),
                    child: FlatButton(
                      textColor: Colors.black54,
                      color: Colors.deepOrangeAccent,
                      child: Text(
                        '➩',
                        style:
                            TextStyle(fontSize: 50, color: Colors.greenAccent),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Homepage()),
                        );
                        //signup screen
                      },
                    )),
              ],
            )));
  }
}

class Liking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: EdgeInsets.all(0),
            child: ListView(
              children: <Widget>[
                new Container(
                    width: 360,
                    height: 228.5,
                    padding: EdgeInsets.only(top: 60),
                    child: IconButton(
                      icon: Image.asset('assets/images.jpg'),
                      color: Colors.white,
                      padding: EdgeInsets.all(20),
                      iconSize: 80,
                      splashColor: Colors.grey,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PickImageDemo()),
                        );
                      },
                    ),
                    decoration: new BoxDecoration(color: Color(0xff008ced))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 0, bottom: 10),
                    child: Text(
                      'Click on the image to change your avatar',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 25, bottom: 10),
                    child: Text(
                      'What do you like?',
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w700),
                    )),
                Container(
                    height: 90,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 28,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Homepage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/music.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      'Music',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    height: 90,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 28,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/ball.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      'Games',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    height: 90,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 28,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/puzzles.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      'Puzzles',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    height: 90,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 28,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/drawing.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      'Drawing',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    height: 90,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 28,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/music.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      'Dancing',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    height: 90,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 28,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/reading.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      'Reading',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
              ],
            )));
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME"),
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(0.6, -0.8),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              backgroundImage: AssetImage('assets/mememan.png'),
              radius: 60.0,
            ),
          ),
          Align(
            alignment: Alignment(-0.8, -0.7),
            child: Text(
              'Hello Lakshman',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 23.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.8, -0.6),
            child: Text(
              'Welcome',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.6, -0.1),
            child: CircleAvatar(
              backgroundColor: Colors.orangeAccent,
              backgroundImage: AssetImage('assets/physicskar.png'),
              radius: 50.0,
            ),
          ),
          Align(
            alignment: Alignment(0.6, -0.1),
            child: CircleAvatar(
              backgroundColor: Colors.green,
              backgroundImage: AssetImage('assets/biologykar.png'),
              radius: 50.0,
            ),
          ),
          Align(
            alignment: Alignment(0.6, 0.1),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.white70)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CarouselDemo()),
                );
              },
              child: const Text('Biology', style: TextStyle(fontSize: 15)),
              color: Colors.white,
              textColor: Colors.black,
              elevation: 15,
            ),
          ),
          Align(
            alignment: Alignment(-0.6, 0.1),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.white70)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Videoonepage()),
                );
              },
              child: const Text('Physics', style: TextStyle(fontSize: 15)),
              color: Colors.white,
              textColor: Colors.black,
              elevation: 15,
            ),
          ),
          Align(
            alignment: Alignment(0.6, 0.5),
            child: CircleAvatar(
              backgroundColor: Colors.deepPurple,
              backgroundImage: AssetImage('assets/chemist.png'),
              radius: 50.0,
            ),
          ),
          Align(
            alignment: Alignment(-0.6, 0.5),
            child: CircleAvatar(
              backgroundColor: Colors.lightBlue,
              backgroundImage: AssetImage('assets/dividers.png'),
              radius: 50.0,
            ),
          ),
          Align(
            alignment: Alignment(-0.6, 0.63),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.white70)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homepage()),
                );
              },
              child: const Text('Mathematics', style: TextStyle(fontSize: 15)),
              color: Colors.white,
              textColor: Colors.black,
              elevation: 15,
            ),
          ),
          Align(
            alignment: Alignment(0.6, 0.63),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.white70)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExampleApp()),
                );
              },
              child: const Text('Chemistry', style: TextStyle(fontSize: 15)),
              color: Colors.white,
              textColor: Colors.black,
              elevation: 15,
            ),
          ),
          Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(left: 20, bottom: 70),
              child: Text(
                'Top picks for you!',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                ),
              )),
          Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(left: 20, top: 620, right: 20),
              child: ListView(children: <Widget>[
                new Container(
                    decoration:
                        new BoxDecoration(color: Colors.lightBlueAccent),
                    child: new ListTile(
                        trailing: const Icon(
                          Icons.arrow_right,
                          size: 40,
                        ),
                        title: Text('Physics,Biology and more...')))
              ])),
        ],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/mememan.png'),
                      radius: 50.0,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Lakshman Kumar',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight + Alignment(0, .3),
                    child: Text(
                      '11th Grade',
                      style: TextStyle(color: Colors.white70, fontSize: 17),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Bookmarks', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.bookmark,
                color: Colors.black,
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Quizzo()));
                // Update the state of the app
                // ...
                // Then close the drawer
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title: Text(
                'Notifications',
                style: TextStyle(fontSize: 24),
              ),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.notifications,
                color: Colors.black,
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Videoonepage()));
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title: Text('Quizzo', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.live_help,
                color: Colors.black,
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Quizzo()));
                // Update the state of the app
                // ...
                // Then close the drawer
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title: Text('Doubts & assignment forum',
                  style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.chat,
                color: Colors.black,
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title: Text('Notes', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.speaker_notes,
                color: Colors.black,
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title: Text('Online examination', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.open_in_browser,
                color: Colors.black,
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title:
                  Text('Online live Classes', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.videocam,
                color: Colors.black,
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ExampleApp()));
                // Update the state of the app
                // ...
                // Then close the drawer
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title: Text('Progress report', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.trending_up,
                color: Colors.black,
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Progress()));
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title: Text('Attendance', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.calendar_today,
                color: Colors.black,
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title: Text('Free courses', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.language,
                color: Colors.black,
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title: Text('Upcoming webinars and competitions',
                  style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.schedule,
                color: Colors.black,
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title: Text('Internship opportunities',
                  style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.work,
                color: Colors.black,
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title: Text('Settings', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.settings,
                color: Colors.black,
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title: Text('Contact us', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.phone_in_talk,
                color: Colors.black,
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title:
                  Text('Terms and Conditions', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.receipt,
                color: Colors.black,
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title: Text('Logout', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.black,
                size: 37,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
          ],
        ),
      ),
    );
  }
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class Homepagenew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Hexcolor('#6002EE'),
        title: Text("HOME"),
      ),
      body: Container(
          padding: EdgeInsets.all(1),
          child: ListView(
            children: <Widget>[
              new Column(
                children: <Widget>[
                  Image.asset('assets/Welcomethree.png',
                      width: 500, height: 320),
                ],
              ),
              Container(
                  child: Row(
                children: <Widget>[
                  Text(
                    'Continue courses       ',
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800),
                  ),
                  FlatButton(
                    textColor: Colors.black54,
                    child: Text(
                      'View all',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRoute()),
                      );
                      //signup screen
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              )),
              Container(
                  child: Column(
                children: <Widget>[
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: false,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                    ),
                    items: imageSliders,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'My courses             ',
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.w800),
                      ),
                      FlatButton(
                        textColor: Colors.black54,
                        child: Text(
                          'View all',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Videoonepage()),
                          );
                          //signup screen
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: false,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                    ),
                    items: imageSliders,
                  ),
                ],
              )),
            ],
          )),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Hexcolor('#6002EE'),
              ),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/face.png'),
                      radius: 50.0,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Hello,Chayan',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Bookmarks', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.bookmark,
                color: Hexcolor('#6002EE'),
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepagenew()));
                // Update the state of the app
                // ...
                // Then close the drawer
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title: Text(
                'Notifications',
                style: TextStyle(fontSize: 24),
              ),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.notifications,
                color: Hexcolor('#6002EE'),
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyTry()));
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title: Text('Quiz/Test', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.live_help,
                color: Hexcolor('#6002EE'),
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Quizzo()));
                // Update the state of the app
                // ...
                // Then close the drawer
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title: Text('Doubts forum', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.chat,
                color: Hexcolor('#6002EE'),
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepagenew()));
                // Update the state of the app
                // ...
                // Then close the drawer
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title: Text('Notes', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.speaker_notes,
                color: Hexcolor('#6002EE'),
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepagenew()));
                // Update the state of the app
                // ...
                // Then close the drawer
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title: Text('Online examination', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.open_in_browser,
                color: Hexcolor('#6002EE'),
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title: Text('Live Classes', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.videocam,
                color: Hexcolor('#6002EE'),
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ExampleApp()));
                // Update the state of the app
                // ...
                // Then close the drawer
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title: Text('Progress report', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.trending_up,
                color: Hexcolor('#6002EE'),
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Progress()));
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title: Text('Attendance', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.calendar_today,
                color: Hexcolor('#6002EE'),
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title: Text('Free courses', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.language,
                color: Hexcolor('#6002EE'),
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title: Text('Upcoming webinars and competitions',
                  style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.schedule,
                color: Hexcolor('#6002EE'),
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title: Text('Internship opportunities',
                  style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.work,
                color: Hexcolor('#6002EE'),
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepagenew()));
                // Update the state of the app
                // ...
                // Then close the drawer
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title: Text('Settings', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.settings,
                color: Hexcolor('#6002EE'),
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title: Text('Contact us', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.phone_in_talk,
                color: Hexcolor('#6002EE'),
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title:
                  Text('Terms and Conditions', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.receipt,
                color: Hexcolor('#6002EE'),
                size: 37,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 10,
            ),
            ListTile(
              title: Text('Logout', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.exit_to_app,
                color: Hexcolor('#6002EE'),
                size: 37,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class Quizzo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QUIZZO"),
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(-0.8, -0.7),
            child: Text(
              'Hello There',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Align(
            alignment: Alignment(-0.8, -0.5),
            child: Text(
              'Lets Quiz up!',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 23.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.1, -0.35),
            child: Text(
              'Choose Subject',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Align(
            alignment: Alignment(-0.6, -0.1),
            child: CircleAvatar(
              backgroundColor: Colors.orangeAccent,
              backgroundImage: AssetImage('assets/physicskar.png'),
              radius: 50.0,
            ),
          ),
          Align(
            alignment: Alignment(0.6, -0.1),
            child: CircleAvatar(
              backgroundColor: Colors.green,
              backgroundImage: AssetImage('assets/biologykar.png'),
              radius: 50.0,
            ),
          ),
          Align(
            alignment: Alignment(0.6, 0.1),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.white70)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
              child: const Text('Biology', style: TextStyle(fontSize: 15)),
              color: Colors.white,
              textColor: Colors.black,
              elevation: 15,
            ),
          ),
          Align(
            alignment: Alignment(-0.6, 0.1),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.white70)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ptest()),
                );
              },
              child: const Text('Physics', style: TextStyle(fontSize: 15)),
              color: Colors.white,
              textColor: Colors.black,
              elevation: 15,
            ),
          ),
          Align(
            alignment: Alignment(0.6, 0.5),
            child: CircleAvatar(
              backgroundColor: Colors.deepPurple,
              backgroundImage: AssetImage('assets/chemist.png'),
              radius: 50.0,
            ),
          ),
          Align(
            alignment: Alignment(-0.6, 0.5),
            child: CircleAvatar(
              backgroundColor: Colors.lightBlue,
              backgroundImage: AssetImage('assets/dividers.png'),
              radius: 50.0,
            ),
          ),
          Align(
            alignment: Alignment(-0.6, 0.63),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.white70)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ptest()),
                );
              },
              child: const Text('Mathematics', style: TextStyle(fontSize: 15)),
              color: Colors.white,
              textColor: Colors.black,
              elevation: 15,
            ),
          ),
          Align(
            alignment: Alignment(0.6, 0.63),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.white70)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
              child: const Text('Chemistry', style: TextStyle(fontSize: 15)),
              color: Colors.white,
              textColor: Colors.black,
              elevation: 15,
            ),
          ),
        ],
      ),
    );
  }
}

class Ptest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    Image.asset('assets/physicskar.png',
                        width: 200, height: 150),
                  ],
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Physics Test',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w800,
                          fontSize: 28),
                    )),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 10, top: 35, bottom: 20),
                    child: Text(
                      'Choose topic',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w400,
                          fontSize: 22),
                    )),
                Container(
                    height: 70,
                    width: double.infinity,
                    padding: EdgeInsets.only(bottom: 20),
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 25,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TopicTest()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Text(
                          "Electric charges and fields",
                          style: TextStyle(fontSize: 25),
                        ))),
                Container(
                    height: 70,
                    padding: EdgeInsets.only(bottom: 20),
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 25,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Text(
                          "Gauss Theorem",
                          style: TextStyle(fontSize: 25),
                        ))),
                Container(
                    height: 70,
                    width: double.infinity,
                    padding: EdgeInsets.only(bottom: 20),
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 25,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Text(
                          "Electric resistance and ohm's law",
                          style: TextStyle(fontSize: 25),
                        ))),
                Container(
                    height: 70,
                    width: double.infinity,
                    padding: EdgeInsets.only(bottom: 20),
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 25,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Text(
                          "Capacitors and Dielectrics",
                          style: TextStyle(fontSize: 25),
                        ))),
                Container(
                    height: 70,
                    padding: EdgeInsets.only(bottom: 20),
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 25,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Text(
                          "Alternating current",
                          style: TextStyle(fontSize: 25),
                        ))),
                Container(
                    height: 70,
                    padding: EdgeInsets.only(bottom: 20),
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 25,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Text(
                          "Direct current",
                          style: TextStyle(fontSize: 25),
                        ))),
                Container(
                    height: 70,
                    width: double.infinity,
                    padding: EdgeInsets.only(bottom: 20),
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 25,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Text(
                          "Magnetism",
                          style: TextStyle(fontSize: 25),
                        ))),
                Container(
                    height: 70,
                    padding: EdgeInsets.only(bottom: 20),
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 25,
                        color: Colors.white,
                        splashColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Text(
                          "Optics",
                          style: TextStyle(fontSize: 25),
                        ))),
              ],
            )));
  }
}

class TopicTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: CircleAvatar(
              backgroundColor: Colors.orange,
              backgroundImage: AssetImage('assets/physicskar.png'),
              radius: 60.0,
            ),
          ),
          Align(
            alignment: Alignment(-0.1, -0.6),
            child: Text(
              'Physics Test',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.8, -0.4),
            child: Text(
              'Topic',
              style: TextStyle(
                  color: Colors.black38,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(0.2, -0.3),
            child: Text(
              '01 Electric charges and fields',
              style: TextStyle(
                  color: Colors.blueGrey,
                  decoration: TextDecoration.underline,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Align(
            alignment: Alignment(-0.8, -0.1),
            child: Text(
              'Choose type',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Align(
            alignment: Alignment(-0.85, 0.3),
            child: GFButton(
              color: Colors.orange,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstQuiz()),
                );
              },
              child: Text(
                "Classic Test",
                style: TextStyle(fontSize: 28),
              ),
              size: 150,
              textColor: Colors.black,
              elevation: 15,
              splashColor: Colors.brown,
              animationDuration: Duration(seconds: 5),
              shape: GFButtonShape.pills,
            ),
          ),
          Align(
            alignment: Alignment(-0.85, 0.95),
            child: GFButton(
              color: Colors.orange,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondQuiz()),
                );
              },
              child: Text(
                "Time bound \n test",
                style: TextStyle(fontSize: 28),
              ),
              textColor: Colors.black,
              size: 150,
              elevation: 15,
              highlightColor: Colors.grey,
              animationDuration: Duration(seconds: 5),
              shape: GFButtonShape.pills,
            ),
          ),
        ],
      ),
    );
  }
}

class FirstQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Quiz time"),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.only(top: 40, left: 15),
                    child: Text(
                      "Electric charges and fields",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.orange),
                    )),
                Container(
                    padding: EdgeInsets.only(top: 40, left: 20),
                    child: Text(
                      "Total question:  10",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    )),
                Container(
                    padding: EdgeInsets.only(top: 40, left: 20),
                    child: Text(
                      "Time Limit:  Nil",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    )),
                Container(
                    padding: EdgeInsets.only(top: 40, left: 20, bottom: 150),
                    child: Text(
                      "Instructions",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    )),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(90, 10, 90, 0),
                    child: RaisedButton(
                      elevation: 10,
                      textColor: Colors.white,
                      color: Colors.orange,
                      child: Text(
                        'Next',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ClassicRoute()),
                        );
                        //signup screen
                      },
                    )),
              ],
            )));
  }
}

class ClassicRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: PageViewDemo(),
        ),
      ),
    );
  }
}

class PageViewDemo extends StatefulWidget {
  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        MyPage1Widget(),
        MyPage2Widget(),
        MyPage3Widget(),
        MyPage4Widget(),
        MyPage5Widget(),
        MyPage6Widget(),
      ],
    );
  }
}

class MyPage1Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Builder(builder: (context) {
      return Stack(
        children: <Widget>[
          Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.bookmark,
                size: 40,
                color: Colors.orange,
              )),
          Align(
            alignment: Alignment(-0.8, -0.97),
            child: Text(
              '01',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.4, -0.7),
            child: Text(
              'State whether true or false:',
              style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.4, -0.5),
            child: Text(
              'Batteries convert chemical to electrical energy.',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Align(
            alignment: Alignment(-0.9, -0.2),
            child: GFButton(
              color: Colors.orange,
              type: GFButtonType.outline,
              shape: GFButtonShape.pills,
              onPressed: () {
                SnackBar mysnackbar = SnackBar(
                  content: Text(
                    "✔Right Answer!",
                    style: TextStyle(fontSize: 25, color: Colors.green),
                  ),
                  duration: new Duration(seconds: 30),
                  backgroundColor: Colors.black,
                  action: new SnackBarAction(
                      label: 'Ok', textColor: Colors.white, onPressed: () {}),
                );
                Scaffold.of(context).showSnackBar(mysnackbar);
              },
              child: Text(
                "A)TRUE                        ",
                style: TextStyle(fontSize: 28),
              ),
              size: 50,
              textColor: Colors.black,
              splashColor: Colors.greenAccent,
              animationDuration: Duration(seconds: 10),
            ),
          ),
          Align(
            alignment: Alignment(-0.9, 0.1),
            child: GFButton(
              color: Colors.orange,
              splashColor: Colors.redAccent,
              type: GFButtonType.outline,
              shape: GFButtonShape.pills,
              onPressed: () {
                SnackBar mysnackbar = SnackBar(
                  content: Text(
                    "❌Wrong Answer!",
                    style: TextStyle(fontSize: 25, color: Colors.red),
                  ),
                  duration: new Duration(seconds: 30),
                  backgroundColor: Colors.black,
                  action: new SnackBarAction(
                      label: 'Solution',
                      textColor: Colors.white,
                      onPressed: () {
                        SnackBar mysnackbar = SnackBar(
                          content: Text(
                            "Batteries are used for converting chemical energy to electrical energy",
                            style:
                                TextStyle(fontSize: 25, color: Colors.black87),
                          ),
                          duration: new Duration(seconds: 30),
                          backgroundColor: Colors.green,
                          action: new SnackBarAction(
                              label: 'ok',
                              textColor: Colors.white,
                              onPressed: () {}),
                        );
                        Scaffold.of(context).showSnackBar(mysnackbar);
                      }),
                );
                Scaffold.of(context).showSnackBar(mysnackbar);
              },
              child: Text(
                "B)FALSE                       ",
                style: TextStyle(fontSize: 28),
              ),
              size: 50,
              textColor: Colors.black,
            ),
          ),
        ],
      );
    }));
  }
}

class MyPage2Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Builder(builder: (context) {
      return Stack(
        children: <Widget>[
          Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.bookmark,
                size: 40,
                color: Colors.orange,
              )),
          Align(
            alignment: Alignment(-0.8, -0.97),
            child: Text(
              '02',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.4, -0.7),
            child: Text(
              'State whether true or false:',
              style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.4, -0.5),
            child: Text(
              "Ohm's law is applicable to all conductors of electricity.",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Align(
            alignment: Alignment(-0.9, -0.2),
            child: GFButton(
              color: Colors.orange,
              type: GFButtonType.outline,
              onPressed: () {
                SnackBar mysnackbar = SnackBar(
                  content: Text(
                    "❌Wrong Answer!",
                    style: TextStyle(fontSize: 25, color: Colors.red),
                  ),
                  duration: new Duration(seconds: 30),
                  backgroundColor: Colors.black,
                  action: new SnackBarAction(
                      label: 'Solution',
                      textColor: Colors.white,
                      onPressed: () {
                        SnackBar mysnackbar = SnackBar(
                          content: Text(
                            "No ohm's law is not applicable for all conducting element.\nEx- Diodes, Transistors,Electrolytes etc",
                            style:
                                TextStyle(fontSize: 25, color: Colors.black87),
                          ),
                          duration: new Duration(seconds: 30),
                          backgroundColor: Colors.green,
                          action: new SnackBarAction(
                              label: 'Ok',
                              textColor: Colors.white,
                              onPressed: () {}),
                        );
                        Scaffold.of(context).showSnackBar(mysnackbar);
                      }),
                );
                Scaffold.of(context).showSnackBar(mysnackbar);
              },
              child: Text(
                "A)TRUE                        ",
                style: TextStyle(fontSize: 28),
              ),
              size: 50,
              textColor: Colors.black,
              splashColor: Colors.greenAccent,
              animationDuration: Duration(seconds: 10),
              shape: GFButtonShape.pills,
            ),
          ),
          Align(
            alignment: Alignment(-0.9, 0.1),
            child: GFButton(
              color: Colors.orange,
              splashColor: Colors.red,
              type: GFButtonType.outline,
              shape: GFButtonShape.pills,
              onPressed: () {
                SnackBar mysnackbar = SnackBar(
                  content: Text(
                    "✔Right answer",
                    style: TextStyle(fontSize: 25, color: Colors.green),
                  ),
                  duration: new Duration(seconds: 30),
                  backgroundColor: Colors.black,
                  action: new SnackBarAction(
                      label: 'Ok', textColor: Colors.white, onPressed: () {}),
                );
                Scaffold.of(context).showSnackBar(mysnackbar);
              },
              child: Text(
                "B)FALSE                       ",
                style: TextStyle(fontSize: 28),
              ),
              size: 50,
              textColor: Colors.black,
            ),
          ),
        ],
      );
    }));
  }
}

class MyPage3Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Builder(builder: (context) {
      return Stack(
        children: <Widget>[
          Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.bookmark,
                size: 40,
                color: Colors.orange,
              )),
          Align(
            alignment: Alignment(-0.8, -0.97),
            child: Text(
              '03',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.4, -0.7),
            child: Text(
              'State whether true or false:',
              style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.4, -0.5),
            child: Text(
              'An ammeter is used to measure the current in a circuit.',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Align(
            alignment: Alignment(-0.9, -0.2),
            child: GFButton(
              color: Colors.orange,
              type: GFButtonType.outline,
              onPressed: () {
                SnackBar mysnackbar = SnackBar(
                  content: Text(
                    "✔Right Answer!",
                    style: TextStyle(fontSize: 25),
                  ),
                  duration: new Duration(seconds: 30),
                  backgroundColor: Colors.green,
                  action: new SnackBarAction(label: 'Ok', onPressed: () {}),
                );
                Scaffold.of(context).showSnackBar(mysnackbar);
              },
              child: Text(
                "A)TRUE                        ",
                style: TextStyle(fontSize: 28),
              ),
              size: 50,
              textColor: Colors.black,
              splashColor: Colors.brown,
              animationDuration: Duration(seconds: 10),
              shape: GFButtonShape.pills,
            ),
          ),
          Align(
            alignment: Alignment(-0.9, 0.1),
            child: GFButton(
              color: Colors.orange,
              splashColor: Colors.red,
              type: GFButtonType.outline,
              shape: GFButtonShape.pills,
              onPressed: () {
                SnackBar mysnackbar = SnackBar(
                  content: Text(
                    "❌Wrong Answer!",
                    style: TextStyle(fontSize: 25),
                  ),
                  duration: new Duration(seconds: 30),
                  backgroundColor: Colors.red,
                  action: new SnackBarAction(label: 'Ok', onPressed: () {}),
                );
                Scaffold.of(context).showSnackBar(mysnackbar);
              },
              child: Text(
                "B)FALSE                       ",
                style: TextStyle(fontSize: 28),
              ),
              size: 50,
              textColor: Colors.black,
            ),
          ),
        ],
      );
    }));
  }
}

class MyPage4Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Builder(builder: (context) {
      return Stack(
        children: <Widget>[
          Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.bookmark,
                size: 40,
                color: Colors.orange,
              )),
          Align(
            alignment: Alignment(-0.8, -0.97),
            child: Text(
              '04',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.4, -0.7),
            child: Text(
              'State whether true or false:',
              style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.4, -0.5),
            child: Text(
              'An ammeter is used to measure the current in a circuit.',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Align(
            alignment: Alignment(-0.9, -0.2),
            child: GFButton(
              color: Colors.orange,
              type: GFButtonType.outline,
              onPressed: () {
                SnackBar mysnackbar = SnackBar(
                  content: Text(
                    "✔Right Answer!",
                    style: TextStyle(fontSize: 25),
                  ),
                  duration: new Duration(seconds: 30),
                  backgroundColor: Colors.green,
                  action: new SnackBarAction(label: 'Ok', onPressed: () {}),
                );
                Scaffold.of(context).showSnackBar(mysnackbar);
              },
              child: Text(
                "A)TRUE                        ",
                style: TextStyle(fontSize: 28),
              ),
              size: 50,
              textColor: Colors.black,
              splashColor: Colors.brown,
              animationDuration: Duration(seconds: 10),
              shape: GFButtonShape.pills,
            ),
          ),
          Align(
            alignment: Alignment(-0.9, 0.1),
            child: GFButton(
              color: Colors.orange,
              splashColor: Colors.red,
              type: GFButtonType.outline,
              shape: GFButtonShape.pills,
              onPressed: () {
                SnackBar mysnackbar = SnackBar(
                  content: Text(
                    "❌Wrong Answer!",
                    style: TextStyle(fontSize: 25),
                  ),
                  duration: new Duration(seconds: 30),
                  backgroundColor: Colors.red,
                  action: new SnackBarAction(label: 'Ok', onPressed: () {}),
                );
                Scaffold.of(context).showSnackBar(mysnackbar);
              },
              child: Text(
                "B)FALSE                       ",
                style: TextStyle(fontSize: 28),
              ),
              size: 50,
              textColor: Colors.black,
            ),
          ),
        ],
      );
    }));
  }
}

class MyPage5Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Builder(builder: (context) {
      return Stack(
        children: <Widget>[
          Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.bookmark,
                size: 40,
                color: Colors.orange,
              )),
          Align(
            alignment: Alignment(-0.8, -0.97),
            child: Text(
              '05',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.4, -0.5),
            child: Text(
              'Determine the amount of charge stored on either plate of a capacitor(4x10^-6 F)when connected across a 12V battery',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Positioned(
            top: 300,
            child: Text(
              "Type your answer below",
              style: TextStyle(fontSize: 25),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: 350),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Type your answer',
                ),
              ),
            ),
          ),
          Positioned(
              top: 5,
              right: 30,
              child: Container(
                  height: 30,
                  padding: EdgeInsets.fromLTRB(120, 10, 10, 0),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.lightGreen,
                    child: Text(
                      'Hint?',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      SnackBar mysnackbar = SnackBar(
                        content: Text(
                          " Use:\n C=Q/V ",
                          style: TextStyle(fontSize: 25),
                        ),
                        duration: new Duration(seconds: 30),
                        backgroundColor: Colors.deepOrange,
                        action: new SnackBarAction(
                            label: 'Ok',
                            textColor: Colors.black,
                            onPressed: () {}),
                      );
                      Scaffold.of(context).showSnackBar(mysnackbar);
                    },
                  ))),
          Positioned(
              top: 450,
              child: Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(120, 10, 100, 0),
                  child: RaisedButton(
                    elevation: 10,
                    textColor: Colors.white,
                    color: Colors.orange,
                    child: Text(
                      'Submit',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      SnackBar mysnackbar = SnackBar(
                        content: Text(
                          " SOLUTION:\n C=Q/V \n 4x10^-6=Q/12 \n Q=48x10^-6",
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                        duration: new Duration(seconds: 30),
                        backgroundColor: Colors.greenAccent,
                        action: new SnackBarAction(
                            label: 'Ok',
                            textColor: Colors.white,
                            onPressed: () {}),
                      );
                      Scaffold.of(context).showSnackBar(mysnackbar);
                    },
                  ))),
        ],
      );
    }));
  }
}

class MyPage6Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Builder(builder: (context) {
      return Stack(
        children: <Widget>[
          Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.bookmark,
                size: 40,
                color: Colors.orange,
              )),
          Align(
            alignment: Alignment(-0.8, -0.97),
            child: Text(
              '06',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.4, -0.5),
            child: Text(
              'Determine the amount of charge stored on either plate of a capacitor(4x10^-6 F)when connected across a 12V battery',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Positioned(
            top: 300,
            child: Text(
              "Type your answer below",
              style: TextStyle(fontSize: 25),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: 350),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Type your answer',
                ),
              ),
            ),
          ),
          Positioned(
              top: 5,
              right: 30,
              child: Container(
                  height: 30,
                  padding: EdgeInsets.fromLTRB(120, 10, 10, 0),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.lightGreen,
                    child: Text(
                      'Hint?',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      SnackBar mysnackbar = SnackBar(
                        content: Text(
                          " Use:\n C=Q/V ",
                          style: TextStyle(fontSize: 25),
                        ),
                        duration: new Duration(seconds: 30),
                        backgroundColor: Colors.deepOrange,
                        action:
                            new SnackBarAction(label: 'Ok', onPressed: () {}),
                      );
                      Scaffold.of(context).showSnackBar(mysnackbar);
                    },
                  ))),
          Positioned(
              top: 450,
              child: Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(120, 10, 100, 0),
                  child: RaisedButton(
                    elevation: 10,
                    textColor: Colors.white,
                    color: Colors.orange,
                    child: Text(
                      'Submit',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      SnackBar mysnackbar = SnackBar(
                        content: Text(
                          " SOLUTION:\n C=Q/V \n 4x10^-6=Q/12 \n Q=48x10^-6",
                          style: TextStyle(fontSize: 25),
                        ),
                        duration: new Duration(seconds: 30),
                        backgroundColor: Colors.greenAccent,
                        action: new SnackBarAction(
                            label: 'Go to analysis', onPressed: () {}),
                      );
                      Scaffold.of(context).showSnackBar(mysnackbar);
                    },
                  ))),
          Positioned(
              top: 500,
              left: 100,
              child: RaisedButton(
                padding: EdgeInsets.only(left: 50, right: 50),
                elevation: 10,
                textColor: Colors.white,
                color: Colors.orange,
                child: Text(
                  'Quit',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TopicTest()),
                  );
                },
              )),
        ],
      );
    }));
  }
}

class SecondQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Quiz time"),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.only(top: 40, left: 15),
                    child: Text(
                      "Electric charges and fields",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.orange),
                    )),
                Container(
                    padding: EdgeInsets.only(top: 40, left: 20),
                    child: Text(
                      "Total question:  10",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    )),
                Container(
                    padding: EdgeInsets.only(top: 40, left: 20),
                    child: Text(
                      "Time Limit:  10 mins",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    )),
                Container(
                    padding: EdgeInsets.only(top: 40, left: 20, bottom: 150),
                    child: Text(
                      "Instructions",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    )),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(90, 10, 90, 0),
                    child: RaisedButton(
                      elevation: 10,
                      textColor: Colors.white,
                      color: Colors.orange,
                      child: Text(
                        'Next',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TimeRoute()),
                        );
                        //signup screen
                      },
                    )),
              ],
            )));
  }
}

class TimeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: PageViewDemotwo(),
        ),
      ),
    );
  }
}

class PageViewDemotwo extends StatefulWidget {
  @override
  _PageViewDemotwoState createState() => _PageViewDemotwoState();
}

class _PageViewDemotwoState extends State<PageViewDemotwo> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        RadioWidgetDemo(),
        Radio2WidgetDemo(),
        Radio3WidgetDemo(),
        MysecondPage2Widget(),
      ],
    );
  }
}

class RadioWidgetDemo extends StatefulWidget {
  RadioWidgetDemo() : super();

  final String title = "Radio Widget Demo";

  @override
  RadioWidgetDemoState createState() => RadioWidgetDemoState();
}

class RadioWidgetDemoState extends State<RadioWidgetDemo> {
  bool running = true;

  int selectedRadioTile;
  @override
  void initState() {
    super.initState();
    duration:
    Duration(seconds: 5);

    selectedRadioTile = 0;
  }

  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Builder(builder: (context) {
      return Stack(
        children: <Widget>[
          Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.bookmark,
                size: 40,
                color: Colors.orange,
              )),
          Align(
            alignment: Alignment(-0.8, -0.97),
            child: Text(
              '01',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.4, -0.8),
            child: Text(
              'Select the correct option',
              style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.4, -0.6),
            child: Text(
              'An electric dipole placed with its axis in the direction of a uniform electric field experiences',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Align(
              alignment: Alignment(-0.4, -0.2),
              child: RadioListTile(
                value: 1,
                groupValue: selectedRadioTile,
                title: Text(
                  "a force but no torque",
                  style: TextStyle(fontSize: 22),
                ),
                onChanged: (val) {
                  print("ok");
                  setSelectedRadioTile(val);
                },
                selected: true,
                activeColor: Colors.indigo,
              )),
          Align(
              alignment: Alignment(-0.4, -0.05),
              child: RadioListTile(
                value: 2,
                groupValue: selectedRadioTile,
                title: Text(
                  "a torque but no force",
                  style: TextStyle(fontSize: 22),
                ),
                onChanged: (val) {
                  print("ok");
                  setSelectedRadioTile(val);
                },
                selected: true,
                activeColor: Colors.indigo,
              )),
          Align(
              alignment: Alignment(-0.4, 0.08),
              child: RadioListTile(
                value: 3,
                groupValue: selectedRadioTile,
                title: Text(
                  "force as well as torque",
                  style: TextStyle(fontSize: 22),
                ),
                onChanged: (val) {
                  print("ok");
                  setSelectedRadioTile(val);
                },
                selected: true,
                activeColor: Colors.indigo,
              )),
          Align(
              alignment: Alignment(-0.4, 0.2),
              child: RadioListTile(
                value: 4,
                groupValue: selectedRadioTile,
                title: Text(
                  "neither force nor torque",
                  style: TextStyle(fontSize: 22),
                ),
                onChanged: (val) {
                  print("ok");
                  setSelectedRadioTile(val);
                },
                selected: true,
                activeColor: Colors.indigo,
              )),
          Align(
            alignment: Alignment(-0.1, -0.97),
            child: TikTikTimer(
              initialDate: DateTime.now(),
              running: running,
              height: 50,
              width: 100,
              backgroundColor: Colors.deepOrange,
              timerTextStyle: TextStyle(color: Colors.white, fontSize: 20),
              borderRadius: 100,
              isRaised: true,
              tracetime: (time) {
                // print(time.getCurrentSecond);
              },
            ),
          ),
        ],
      );
    }));
  }
}

class Radio2WidgetDemo extends StatefulWidget {
  Radio2WidgetDemo() : super();

  final String title = "Radio Widget Demo2";

  @override
  Radio2WidgetDemoState createState() => Radio2WidgetDemoState();
}

class Radio2WidgetDemoState extends State<Radio2WidgetDemo> {
  bool running = true;
  int selectedRadioTile2;

  @override
  void initState() {
    super.initState();

    selectedRadioTile2 = 0;
  }

  setSelectedRadioTile2(int val2) {
    setState(() {
      selectedRadioTile2 = val2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Builder(builder: (context) {
      return Stack(
        children: <Widget>[
          Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.bookmark,
                size: 40,
                color: Colors.orange,
              )),
          Align(
            alignment: Alignment(-0.8, -0.97),
            child: Text(
              '02',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.4, -0.8),
            child: Text(
              'Select the correct option',
              style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.4, -0.6),
            child: Text(
              'Two uncharged bodies on rubbing gets charged due to :',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Align(
              alignment: Alignment(-0.4, -0.2),
              child: RadioListTile(
                value: 1,
                groupValue: selectedRadioTile2,
                title: Text(
                  "Conduction",
                  style: TextStyle(fontSize: 22),
                ),
                onChanged: (val2) {
                  print("ok");
                  setSelectedRadioTile2(val2);
                },
                selected: true,
                activeColor: Colors.indigo,
              )),
          Align(
              alignment: Alignment(-0.4, -0.05),
              child: RadioListTile(
                value: 2,
                groupValue: selectedRadioTile2,
                title: Text(
                  "Friction",
                  style: TextStyle(fontSize: 22),
                ),
                onChanged: (val2) {
                  print("ok");
                  setSelectedRadioTile2(val2);
                },
                selected: true,
                activeColor: Colors.indigo,
              )),
          Align(
              alignment: Alignment(-0.4, 0.08),
              child: RadioListTile(
                value: 3,
                groupValue: selectedRadioTile2,
                title: Text(
                  "Induction",
                  style: TextStyle(fontSize: 22),
                ),
                onChanged: (val2) {
                  print("ok");
                  setSelectedRadioTile2(val2);
                },
                selected: true,
                activeColor: Colors.indigo,
              )),
          Align(
              alignment: Alignment(-0.4, 0.2),
              child: RadioListTile(
                value: 4,
                groupValue: selectedRadioTile2,
                title: Text(
                  "None of these",
                  style: TextStyle(fontSize: 22),
                ),
                onChanged: (val2) {
                  print("ok");
                  setSelectedRadioTile2(val2);
                },
                selected: true,
                activeColor: Colors.indigo,
              )),
          Align(
            alignment: Alignment(-0.1, -0.97),
            child: TikTikTimer(
              initialDate: DateTime.now(),
              running: running,
              height: 50,
              width: 100,
              backgroundColor: Colors.deepOrange,
              timerTextStyle: TextStyle(color: Colors.white, fontSize: 20),
              borderRadius: 100,
              isRaised: true,
              tracetime: (time) {
                // print(time.getCurrentSecond);
              },
            ),
          ),
        ],
      );
    }));
  }
}

class Radio3WidgetDemo extends StatefulWidget {
  Radio3WidgetDemo() : super();

  final String title = "Radio Widget Demo3";

  @override
  Radio3WidgetDemoState createState() => Radio3WidgetDemoState();
}

class Radio3WidgetDemoState extends State<Radio3WidgetDemo> {
  bool running = true;
  int selectedRadioTile3;
  @override
  void initState() {
    super.initState();

    selectedRadioTile3 = 0;
  }

  setSelectedRadioTile3(int val3) {
    setState(() {
      selectedRadioTile3 = val3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Builder(builder: (context) {
      return Stack(
        children: <Widget>[
          Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.bookmark,
                size: 40,
                color: Colors.orange,
              )),
          Align(
            alignment: Alignment(-0.8, -0.97),
            child: Text(
              '03',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.4, -0.8),
            child: Text(
              'Select the correct option',
              style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.4, -0.6),
            child: Text(
              'An electric dipole placed with its axis in the direction of a uniform electric field experiences',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Align(
              alignment: Alignment(-0.4, -0.2),
              child: RadioListTile(
                value: 1,
                groupValue: selectedRadioTile3,
                title: Text(
                  "a force but no torque",
                  style: TextStyle(fontSize: 22),
                ),
                onChanged: (val3) {
                  print("ok");
                  setSelectedRadioTile3(val3);
                },
                selected: true,
                activeColor: Colors.indigo,
              )),
          Align(
              alignment: Alignment(-0.4, -0.05),
              child: RadioListTile(
                value: 2,
                groupValue: selectedRadioTile3,
                title: Text(
                  "a torque but no force",
                  style: TextStyle(fontSize: 22),
                ),
                onChanged: (val3) {
                  print("ok");
                  setSelectedRadioTile3(val3);
                },
                selected: true,
                activeColor: Colors.indigo,
              )),
          Align(
              alignment: Alignment(-0.4, 0.08),
              child: RadioListTile(
                value: 3,
                groupValue: selectedRadioTile3,
                title: Text(
                  "force as well as torque",
                  style: TextStyle(fontSize: 22),
                ),
                onChanged: (val3) {
                  print("ok");
                  setSelectedRadioTile3(val3);
                },
                selected: true,
                activeColor: Colors.indigo,
              )),
          Align(
              alignment: Alignment(-0.4, 0.2),
              child: RadioListTile(
                value: 4,
                groupValue: selectedRadioTile3,
                title: Text(
                  "neither force nor torque",
                  style: TextStyle(fontSize: 22),
                ),
                onChanged: (val3) {
                  print("ok");
                  setSelectedRadioTile3(val3);
                },
                selected: true,
                activeColor: Colors.indigo,
              )),
          Align(
            alignment: Alignment(-0.1, -0.97),
            child: TikTikTimer(
              initialDate: DateTime.now(),
              running: running,
              height: 50,
              width: 100,
              backgroundColor: Colors.deepOrange,
              timerTextStyle: TextStyle(color: Colors.white, fontSize: 20),
              borderRadius: 100,
              isRaised: true,
              tracetime: (time) {
                // print(time.getCurrentSecond);
              },
            ),
          ),
          Positioned(
              top: 450,
              child: Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(120, 10, 100, 0),
                  child: RaisedButton(
                    elevation: 10,
                    textColor: Colors.white,
                    color: Colors.orange,
                    child: Text(
                      'Submit',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      SnackBar mysnackbar = SnackBar(
                        content: Text(
                          " ARE YOU SURE?",
                          style: TextStyle(fontSize: 25),
                        ),
                        duration: new Duration(seconds: 10),
                        backgroundColor: Colors.redAccent,
                        action: new SnackBarAction(
                            label: 'Yes',
                            textColor: Colors.black,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TimeAnalysis()),
                              );
                            }),
                      );
                      Scaffold.of(context).showSnackBar(mysnackbar);
                    },
                  ))),
        ],
      );
    }));
  }
}

class MysecondPage2Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Builder(builder: (context) {
      return Stack(
        children: <Widget>[
          Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.bookmark,
                size: 40,
                color: Colors.orange,
              )),
          Align(
            alignment: Alignment(-0.8, -0.97),
            child: Text(
              '02',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.4, -0.7),
            child: Text(
              'State whether true or false:',
              style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.4, -0.5),
            child: Text(
              "Ohm's law is applicable to all conductors of electricity.",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Align(
            alignment: Alignment(-0.9, -0.2),
            child: GFButton(
              color: Colors.orange,
              type: GFButtonType.outline,
              onPressed: () {
                SnackBar mysnackbar = SnackBar(
                  content: Text(
                    "❌Wrong Answer!",
                    style: TextStyle(fontSize: 25),
                  ),
                  duration: new Duration(seconds: 30),
                  backgroundColor: Colors.red,
                  action: new SnackBarAction(label: 'Ok', onPressed: () {}),
                );
                Scaffold.of(context).showSnackBar(mysnackbar);
              },
              child: Text(
                "A)TRUE                        ",
                style: TextStyle(fontSize: 28),
              ),
              size: 50,
              textColor: Colors.black,
              splashColor: Colors.brown,
              animationDuration: Duration(seconds: 10),
              shape: GFButtonShape.square,
            ),
          ),
          Align(
            alignment: Alignment(-0.9, 0.1),
            child: GFButton(
              color: Colors.orange,
              splashColor: Colors.red,
              type: GFButtonType.outline,
              shape: GFButtonShape.square,
              onPressed: () {
                SnackBar mysnackbar = SnackBar(
                  content: Text(
                    "Right answer",
                    style: TextStyle(fontSize: 25),
                  ),
                  duration: new Duration(seconds: 30),
                  backgroundColor: Colors.green,
                  action: new SnackBarAction(label: 'Ok', onPressed: () {}),
                );
                Scaffold.of(context).showSnackBar(mysnackbar);
              },
              child: Text(
                "B)FALSE                     ",
                style: TextStyle(fontSize: 28),
              ),
              size: 50,
              textColor: Colors.black,
            ),
          ),
        ],
      );
    }));
  }
}

class TimeAnalysis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Builder(builder: (context) {
      return Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(-0.1, -0.8),
            child: Text(
              'Electric Charge',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.1, -0.6),
            child: Text(
              'Level 1',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Align(
            alignment: Alignment(-0.4, -0.5),
            child: GFProgressBar(
              percentage: 0.3,
              lineHeight: 20,
              alignment: MainAxisAlignment.spaceBetween,
              child: const Text(
                '30%',
                textAlign: TextAlign.end,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              leading:
                  Icon(Icons.sentiment_dissatisfied, color: GFColors.DANGER),
              trailing:
                  Icon(Icons.sentiment_satisfied, color: GFColors.SUCCESS),
              backgroundColor: Colors.black26,
              progressBarColor: GFColors.INFO,
            ),
          ),
          Align(
            alignment: Alignment(-0.1, -0.42),
            child: Text(
              'Get 50% or above to earn a badge',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300),
            ),
          ),
          Align(
            alignment: Alignment(-0.7, -0.25),
            child: Image.asset('assets/stopwatch.png'),
          ),
          Align(
            alignment: Alignment(-0.1, -0.25),
            child: Image.asset('assets/hourglass.png'),
          ),
          Align(
            alignment: Alignment(0.55, -0.25),
            child: Image.asset('assets/target.png'),
          ),
          Align(
            alignment: Alignment(0.55, -0.1),
            child: Text(
              ' Accuracy',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 14,
                  fontWeight: FontWeight.w300),
            ),
          ),
          Align(
            alignment: Alignment(0.55, -0.05),
            child: Text(
              ' 30%',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.1, -0.1),
            child: Text(
              'Speed',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300),
            ),
          ),
          Align(
            alignment: Alignment(-0.1, -0.05),
            child: Text(
              '20s',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.7, -0.1),
            child: Text(
              'Time speed',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300),
            ),
          ),
          Align(
            alignment: Alignment(-0.7, -0.05),
            child: Text(
              '5s/Ques',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.7, 0.2),
            child: Text(
              'Correct-      1',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.7, 0.4),
            child: Text(
              'Wrong-        0',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.7, 0.6),
            child: Text(
              'Skipped-     2',
              style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.1, 1),
            child: GFButton(
              color: Colors.orange,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homepage()),
                );
              },
              child: Text(
                "Exit",
                style: TextStyle(fontSize: 28),
              ),
              blockButton: true,
              textColor: Colors.black,
              elevation: 15,
              highlightColor: Colors.deepPurple,
              shape: GFButtonShape.pills,
            ),
          ),
        ],
      );
    }));
  }
}

class PickImageDemo extends StatefulWidget {
  PickImageDemo() : super();

  final String title = "Flutter Pick Image demo";

  @override
  _PickImageDemoState createState() => _PickImageDemoState();
}

class _PickImageDemoState extends State<PickImageDemo> {
  Future<File> imageFile;

  pickImageFromGallery(ImageSource source) {
    setState(() {
      imageFile = ImagePicker.pickImage(source: source);
    });
  }

  Widget showImage() {
    return FutureBuilder<File>(
      future: imageFile,
      builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.data != null) {
          return Image.file(
            snapshot.data,
            width: 100,
            height: 100,
          );
        } else if (snapshot.error != null) {
          return const Text(
            'Error Picking Image',
            textAlign: TextAlign.center,
          );
        } else {
          return const Text(
            'No Image Selected',
            textAlign: TextAlign.center,
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
              alignment: Alignment(0.8, -0.8),
              child: RaisedButton(
                child: Text("Upload image"),
                onPressed: () {
                  pickImageFromGallery(ImageSource.gallery);
                },
              )),
          Align(
            alignment: Alignment(-0.8, -0.75),
            child: Text(
              'Choose an Avatar or',
              style: TextStyle(
                  color: Colors.black38,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.7, -0.4),
            child: IconButton(
              icon: Image.asset('assets/man.png'),
              color: Colors.white,
              padding: EdgeInsets.all(20),
              iconSize: 120,
              splashColor: Colors.purple,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Manpath()),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment(0.7, -0.4),
            child: IconButton(
              icon: Image.asset('assets/bearxhd.png'),
              color: Colors.white,
              padding: EdgeInsets.all(20),
              iconSize: 120,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Bearpath()),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment(0.7, 0.1),
            child: IconButton(
              icon: Image.asset('assets/bunny.png'),
              color: Colors.white,
              padding: EdgeInsets.all(20),
              splashColor: Colors.deepOrangeAccent,
              iconSize: 120,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Bunnypath()),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment(-0.7, 0.1),
            child: IconButton(
              icon: Image.asset('assets/dog.png'),
              color: Colors.white,
              padding: EdgeInsets.all(20),
              iconSize: 120,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Bunnypath()),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment(0.7, 0.6),
            child: IconButton(
              icon: Image.asset('assets/ppl.png'),
              color: Colors.white,
              padding: EdgeInsets.all(20),
              iconSize: 120,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PickImageDemo()),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment(-0.7, 0.6),
            child: IconButton(
              icon: Image.asset('assets/shark.png'),
              color: Colors.white,
              padding: EdgeInsets.all(20),
              iconSize: 120,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PickImageDemo()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Manpath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: EdgeInsets.all(0),
            child: ListView(
              children: <Widget>[
                new Container(
                    width: 360,
                    height: 228.5,
                    padding: EdgeInsets.only(top: 40),
                    child: IconButton(
                      icon: Image.asset('assets/man.png'),
                      color: Colors.white,
                      padding: EdgeInsets.all(20),
                      iconSize: 120,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PickImageDemo()),
                        );
                      },
                    ),
                    decoration: new BoxDecoration(color: Color(0xff008ced))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 0, bottom: 10),
                    child: Text(
                      'Click on the image to change your avatar',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 25, bottom: 10),
                    child: Text(
                      'What do you like?',
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w700),
                    )),
                Container(
                    height: 90,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 28,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Homepage2()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/music.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      'Music',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    height: 90,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 28,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/ball.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      'Games',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    height: 90,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 28,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/puzzles.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      'Puzzles',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    height: 90,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 28,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/drawing.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      'Drawing',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    height: 90,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 28,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/music.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      'Dancing',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    height: 90,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 28,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/reading.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      'Reading',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
              ],
            )));
  }
}

class Bearpath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: EdgeInsets.all(0),
            child: ListView(
              children: <Widget>[
                new Container(
                    width: 360,
                    height: 228.5,
                    padding: EdgeInsets.only(top: 40),
                    child: IconButton(
                      icon: Image.asset('assets/bearhd.png'),
                      color: Colors.white,
                      padding: EdgeInsets.all(20),
                      iconSize: 120,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PickImageDemo()),
                        );
                      },
                    ),
                    decoration: new BoxDecoration(color: Color(0xff008ced))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 0, bottom: 10),
                    child: Text(
                      'Click on the image to change your avatar',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 25, bottom: 10),
                    child: Text(
                      'What do you like?',
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w700),
                    )),
                Container(
                    height: 90,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 28,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Homepage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/music.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      'Music',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    height: 90,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 28,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/ball.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      'Games',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    height: 90,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 28,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/puzzles.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      'Puzzles',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    height: 90,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 28,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/drawing.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      'Drawing',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    height: 90,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 28,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/music.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      'Dancing',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
                Container(
                    height: 90,
                    width: double.infinity,
                    child: RaisedButton(
                        hoverElevation: 25,
                        elevation: 28,
                        color: Colors.white,
                        splashColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white70)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroductionPage()),
                          );
                          //signup screen
                        },
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset('assets/reading.png'))),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 5, bottom: 28),
                    child: Text(
                      'Reading',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    )),
              ],
            )));
  }
}

class Homepage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WELCOME"),
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(0.6, -0.8),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/man.png'),
              radius: 60.0,
            ),
          ),
          Align(
            alignment: Alignment(-0.8, -0.7),
            child: Text(
              'Hello Lakshman',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 23.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.8, -0.6),
            child: Text(
              'Welcome',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment(-0.6, -0.1),
            child: CircleAvatar(
              backgroundColor: Colors.orangeAccent,
              backgroundImage: AssetImage('assets/physicskar.png'),
              radius: 50.0,
            ),
          ),
          Align(
            alignment: Alignment(0.6, -0.1),
            child: CircleAvatar(
              backgroundColor: Colors.green,
              backgroundImage: AssetImage('assets/biologykar.png'),
              radius: 50.0,
            ),
          ),
          Align(
            alignment: Alignment(0.6, 0.1),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.white70)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
              child: const Text('Biology', style: TextStyle(fontSize: 15)),
              color: Colors.white,
              textColor: Colors.black,
              elevation: 15,
            ),
          ),
          Align(
            alignment: Alignment(-0.6, 0.1),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.white70)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
              child: const Text('Physics', style: TextStyle(fontSize: 15)),
              color: Colors.white,
              textColor: Colors.black,
              elevation: 15,
            ),
          ),
          Align(
            alignment: Alignment(0.6, 0.5),
            child: CircleAvatar(
              backgroundColor: Colors.deepPurple,
              backgroundImage: AssetImage('assets/chemist.png'),
              radius: 50.0,
            ),
          ),
          Align(
            alignment: Alignment(-0.6, 0.5),
            child: CircleAvatar(
              backgroundColor: Colors.lightBlue,
              backgroundImage: AssetImage('assets/dividers.png'),
              radius: 50.0,
            ),
          ),
          Align(
            alignment: Alignment(-0.6, 0.63),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.white70)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
              child: const Text('Mathematics', style: TextStyle(fontSize: 15)),
              color: Colors.white,
              textColor: Colors.black,
              elevation: 15,
            ),
          ),
          Align(
            alignment: Alignment(0.6, 0.63),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.white70)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
              child: const Text('Chemistry', style: TextStyle(fontSize: 15)),
              color: Colors.white,
              textColor: Colors.black,
              elevation: 15,
            ),
          ),
          Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(left: 20, bottom: 70),
              child: Text(
                'Top picks for you!',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                ),
              )),
          Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(left: 20, top: 500, right: 20),
              child: ListView(children: <Widget>[
                new Container(
                    decoration:
                        new BoxDecoration(color: Colors.lightBlueAccent),
                    child: new ListTile(
                        trailing: const Icon(
                          Icons.arrow_right,
                          size: 40,
                        ),
                        title: Text('Physics,Biology and more...')))
              ])),
        ],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/man.png'),
                      radius: 50.0,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Lakshman Kumar',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight + Alignment(0, .3),
                    child: Text(
                      '6th Grade',
                      style: TextStyle(color: Colors.white70, fontSize: 17),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Bookmarks', style: TextStyle(fontSize: 24)),
              leading: Icon(
                Icons.bookmark,
                color: Colors.black,
                size: 37,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => IntroductionPage()));
                // Update the state of the app
                // ...
                // Then close the drawer
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text(
                'Notifications',
                style: TextStyle(fontSize: 24),
              ),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.notifications,
                color: Colors.black,
                size: 37,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text('My Rewards', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.card_giftcard,
                color: Colors.black,
                size: 37,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text('Quizzo', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.live_help,
                color: Colors.black,
                size: 37,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Quizzo()));
                // Update the state of the app
                // ...
                // Then close the drawer
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text('Notes', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.speaker_notes,
                color: Colors.black,
                size: 37,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text('Redeem Voucher', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.loyalty,
                color: Colors.black,
                size: 37,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text('Online Classes', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.computer,
                color: Colors.black,
                size: 37,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text('Subscribe now', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.subscriptions,
                color: Colors.black,
                size: 37,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text('Certifications', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.language,
                color: Colors.black,
                size: 37,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text('Settings', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.settings,
                color: Colors.black,
                size: 37,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text('Contact us', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.phone_in_talk,
                color: Colors.black,
                size: 37,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              height: 5,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title:
                  Text('Terms and Conditions', style: TextStyle(fontSize: 24)),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.receipt,
                color: Colors.black,
                size: 37,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
