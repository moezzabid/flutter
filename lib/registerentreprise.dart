import 'package:flutter/material.dart';


class registeren extends StatefulWidget {
  const registeren({Key key}) : super(key: key);

  @override
  _registerenState createState() => _registerenState();

}

class _registerenState extends State<registeren> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController fullnameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  String selectedCountry = 'CA';
  bool verifName = true;
  bool verifEmail = true;
  bool verifPhone = true;
  bool verifPassword = true;
  bool isRequest = false;
  bool visible = true;
  String passwordVerification = "";
  String ErrorMessage = '';

  void checkFullname(String v) {
    if (v == '')
      setState(() {
        verifName = false;
      });
    else
      setState(() {
        verifName = true;
      });
  }
  bool validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    return (!regex.hasMatch(value)) ? false : true;
  }
  void checkEmail(String v) {
    if (v == '')
      setState(() {
        verifEmail = false;
      });
    else if (validateEmail(v))
      setState(() {
        verifEmail = true;
      });
    else
      setState(() {
        verifEmail = false;
      });
  }


  void checkPassword(String v) {
    if (v == '')
      setState(() {
        verifPassword = false;
        passwordVerification = "Veuillez saisir un mot de passe";
        ErrorMessage = passwordVerification;
      });
    else {
      if (v.length >= 8)
        setState(() {
          verifPassword = true;
          passwordVerification = "";
          ErrorMessage = "";
        });
      else
        setState(() {
          verifPassword = false;
          passwordVerification =
          "Mot de passe faible, il faut au moins 8 caractères";
          ErrorMessage = passwordVerification;
        });
    }
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(

      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/en.jpeg'), fit: BoxFit.cover),
      ),
      child: Stack(
        children: <Widget>[
        Positioned(
        top: 0.0,
        left: 0.0,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.3, 0.5, 0.7, 0.9],
              colors: [
                Colors.black.withOpacity(0.4),
                Colors.black.withOpacity(0.55),
                Colors.black.withOpacity(0.7),
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(1.0),
              ],
            ),
          ),
        ),
      ),
        Positioned(
        child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 70.0, left: 20.0),
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Create account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 70.0),
              Padding(
                padding: EdgeInsets.only(right: 20.0, left: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200].withOpacity(0.3),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    controller: fullnameController,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      checkFullname(value);
                    },


                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20.0),
                        labelText:'login',
                      labelStyle: TextStyle(
                          color: verifName ? Colors.black : Colors.red),
                      errorText: verifName ? null : '',
                      errorStyle: TextStyle(
                          decorationColor: Colors.red,
                          height: 0,
                          fontSize: 0.1),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.only(right: 20.0, left: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200].withOpacity(0.3),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    controller: emailController,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      checkEmail(value);
                    },


                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20.0),
                      labelText:'Email',
                      labelStyle: TextStyle(
                          color: verifEmail ? Colors.black : Colors.red),
                      errorText: verifEmail ? null : '',
                      errorStyle: TextStyle(
                          decorationColor: Colors.red,
                          height: 0,
                          fontSize: 0.1),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),

      ]
      )
    )
        )
        ]
      )
    );

  }
}
