import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_fini/Animation/fadeIn.dart';
import 'package:flutter_fini/pub.dart';
import 'package:flutter_fini/signup/signup.dart';
import 'package:flutter_fini/Home/loginn.dart';
import 'package:flutter_fini/otp_screen.dart';
import 'package:flutter_fini/register.dart';
import 'package:fluttertoast/fluttertoast.dart';


//My Own Imports


class Login1 extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login1> {
  // Initially password is obscure
  bool _obscureText = true;
  DateTime currentBackPressTime;

  // Toggles the password show status
  void _viewPassword() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(



        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 70.0, right: 30.0, left: 30.0),
              child: FadeIn(
                1.0,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Se connecter",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Alatsi',
                      ),
                    ),
                    InkWell(
                      child: Text(
                        'inscrivez-vous',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Alatsi',
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signup5()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40.0),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(right: 50.0, left: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FadeIn(
                    1.2,
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage('assets/bh.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FadeIn(
                          1.4,
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'TEl ou Email',
                              contentPadding: const EdgeInsets.only(
                                  top: 12.0, bottom: 12.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        FadeIn(
                          1.6,
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'MOt passe',
                              suffixIcon: IconButton(
                                icon: Icon(Icons.remove_red_eye),
                                onPressed: _viewPassword,
                              ),
                              contentPadding: const EdgeInsets.only(
                                  top: 12.0, bottom: 12.0),
                            ),
                            obscureText: _obscureText,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        FadeIn(
                          1.8,
                          Container(
                            alignment: Alignment.bottomRight,
                            child: InkWell(
                              child: Text(
                                'Mot passe oublié?',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontFamily: 'Alatsi',
                                  fontSize: 15.0,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Register()),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50.0),
                  FadeIn(
                    2.0,
                    InkWell(
                      child: Container(
                        height: 45.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          shadowColor: Colors.grey[300],
                          color: Colors.white,
                          borderOnForeground: false,
                          elevation: 5.0,
                          child: GestureDetector(
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.check,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  SizedBox(
                                    width: 7.0,
                                  ),
                                  Text(
                                    "Se connecter",
                                    style: TextStyle(
                                      fontFamily: 'Alatsi',
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BottomNavigationBar3()),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  FadeIn(
                    2.2,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'tpas de compte',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 15.0,
                            fontFamily: 'Alatsi',
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        InkWell(
                          child: Text(
                            'inscrivez-vous',
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 18.0,
                              fontFamily: 'Alatsi',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Register()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  FadeIn(
                    2.4,
                    Text(
                      "Continuer avec",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.0,
                        fontFamily: 'Alatsi',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FadeIn(
                        2.6,
                        InkWell(
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: new BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              image: new DecorationImage(
                                image: new AssetImage('assets/google_plus.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: new BorderRadius.all(
                                  new Radius.circular(30.0)),
                              border: new Border.all(width: 0.0),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                      SizedBox(
                        width: 18.0,
                      ),
                      FadeIn(
                        2.8,
                        InkWell(
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: new BoxDecoration(
                              color: const Color(0xff7c94b6),
                              image: new DecorationImage(
                                image: new AssetImage('assets/fb.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: new BorderRadius.all(
                                  new Radius.circular(30.0)),
                              border: new Border.all(width: 0.0),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            ),
          ],
        ),
        onWillPop: () async {
          bool backStatus = onWillPop();
          if (backStatus) {
            exit(0);
          }
          return false;
        },
      ),
    );
  }

  onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(
        msg: 'Press Back Once Again to Exit.',
        backgroundColor: Colors.black,
        textColor: Colors.white,
      );
      return false;
    } else {
      return true;
    }
  }
}
