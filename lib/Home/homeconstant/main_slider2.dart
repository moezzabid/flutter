
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_fini/Home/login1.dart';
import 'package:page_transition/page_transition.dart';

class MainSlider2 extends StatefulWidget {
  @override
  _MainSlider2State createState() => _MainSlider2State();
}

class _MainSlider2State extends State<MainSlider2> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(

      padding: EdgeInsets.only(bottom: 0.0),
      child: Row(
        children: <Widget>[

              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade, child: Login1()));
                },
                child: Container(
                  height: 230.0,
                  width: 170.0,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        blurRadius: 1.0,
                        spreadRadius: 1.0,
                        color: Colors.grey[300],
                      )
                    ],
                    image: DecorationImage(
                      image: AssetImage("assets/1.png"),
                      fit: BoxFit.cover,
                    ),
                  ),

                ),


              ),

              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade, child: Login1()));
                },
                child: Container(
                  height: 230.0,
                  width: 170.0,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        blurRadius: 1.0,
                        spreadRadius: 1.0,
                        color: Colors.grey[300],
                      )
                    ],
                    image: DecorationImage(
                      image: AssetImage("assets/2.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade, child: Login1()));
                },
                child: Container(
                  height: 230.0,
                  width: 170.0,
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        blurRadius: 1.0,
                        spreadRadius: 1.0,
                        color: Colors.grey[300],
                      )
                    ],
                    image: DecorationImage(
                      image: AssetImage("assets/3.png"),
                      fit: BoxFit.cover,
                    ),
                  ),

                ),

              ),
            ],

          ),


    );
  }
}
