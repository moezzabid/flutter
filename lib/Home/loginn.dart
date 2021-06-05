import 'package:flutter/material.dart';
import 'package:flutter_fini/Home/login1.dart';
import 'package:flutter_fini/signup/signupartisan.dart';
import 'package:flutter_fini/signup/signupclientmor.dart';
import 'package:flutter_fini/signup/signupclientphy.dart';
import 'package:flutter_fini/signup/signupentreprise.dart';
import 'package:page_transition/page_transition.dart';

class Signup5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF373E50),
      body: ListView(
        children: [

          Center(
            //height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Material(
                    elevation: 3.0,
                    borderRadius: BorderRadius.circular(8.0),
                    child: Container(
                      padding: EdgeInsets.only(top: 20.0),
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Color(0xFF656B79),
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 20.0),
                            Text(
                              'Vous êtes',
                              style: TextStyle(
                                fontSize: 28.0,
                                color: Colors.black,
                                fontFamily: 'Signika Negative',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 3.0),
                            Text(
                              'Professionnel',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                                fontFamily: 'Signika Negative',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 3.0),

                        Row(
                          children: <Widget>[

                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.fade, child: Signupartisan()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Container(
                                  height: 200.0,
                                  width: 120.0,

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
                                      image: AssetImage("assets/7.jpeg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),

                                ),

                              ),

                      ),
                            SizedBox(height: 50),

                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.fade, child: Signupentreprise()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Container(
                                  height: 200.0,
                                  width: 120.0,

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
                                      image: AssetImage("assets/6.jpeg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),

                                ),
                              ),
                            )
                        ]

                            ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),

                          child: Container(

                           child: Row(
                             children: [
                               SizedBox(width: 35),
                               Text(
                                 'Artisan',
                                 style: TextStyle(
                                   fontSize: 18.0,

                                   color: Colors.black,
                                   fontFamily: 'Signika Negative',
                                   fontWeight: FontWeight.w500,
                                 ),
                               ),
                               SizedBox(width: 100),

                               Text(
                                 'Entreprise',
                                 style: TextStyle(
                                   fontSize: 18.0,
                                   color: Colors.black,
                                   fontFamily: 'Signika Negative',
                                   fontWeight: FontWeight.w500,
                                 ),
                               ),
                             ],
                           ),

                            ),


                        )




                          ],
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
          Center(
            //height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Material(
                    elevation: 3.0,
                    borderRadius: BorderRadius.circular(8.0),
                    child: Container(
                      padding: EdgeInsets.only(top: 10.0),
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Color(0xFF656B79),
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 20.0),
                            Text(
                              'Vous êtes',
                              style: TextStyle(
                                fontSize: 28.0,
                                color: Colors.black,
                                fontFamily: 'Signika Negative',
                                fontWeight: FontWeight.bold,
                              ),
                            ), SizedBox(height: 3.0),
                            Text(
                              'Client',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                                fontFamily: 'Signika Negative',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 3.0),

                            Row(
                                children: <Widget>[

                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              type: PageTransitionType.fade, child: Signupphy()));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        height: 200.0,
                                        width: 120.0,

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
                                            image: AssetImage("assets/9.jpeg"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),

                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              type: PageTransitionType.fade, child: Signupclientmor()));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        height: 200.0,
                                        width: 120.0,

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
                                            image: AssetImage("assets/6.jpeg"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),

                                      ),
                                    ),
                                  )
                                ]

                            ),

                            Padding(
                              padding: const EdgeInsets.all(6.0),

                              child: Container(

                                child: Row(
                                  children: [
                                    SizedBox(width: 35),
                                    Text(
                                      'Physique',
                                      style: TextStyle(
                                        fontSize: 18.0,

                                        color: Colors.black,
                                        fontFamily: 'Signika Negative',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 100),

                                    Text(
                                      'Morale',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.black,
                                        fontFamily: 'Signika Negative',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),

                              ),


                            )





                          ],
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}