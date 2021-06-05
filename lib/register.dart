import 'package:flutter/material.dart';
import 'package:flutter_fini/constant/constant.dart';
import 'package:flutter_fini/otp_screen.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();


}

class _RegisterState extends State<Register> {
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
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: ListView(
        children: <Widget>[

          Padding(
            padding: EdgeInsets.all(fixPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                heightSpace,
                heightSpace,
                heightSpace,
                heightSpace,
                heightSpace,
                heightSpace,
                Image.asset(
                  'assets/th.png',
                  width: 200.0,
                  fit: BoxFit.fitWidth,
                ),
                heightSpace,
                heightSpace,
                heightSpace,
                heightSpace,
                Text('Enregistrer votre compte', style: greyHeadingStyle),
                heightSpace,
                heightSpace,
                heightSpace,
                // Full Name TextField Start
                Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        blurRadius: 1.5,
                        spreadRadius: 1.5,
                        color: Colors.grey[200],
                      ),
                    ],
                  ),
                  child: TextField(
                    style: TextStyle(color: verifName ? Colors.black : Colors.red),

                    controller: fullnameController,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      checkFullname(value);
                    },


                    decoration: InputDecoration(
                      errorText: verifName ? null : '',
                      errorStyle: TextStyle(
                          decorationColor: Colors.red,
                          height: 0,
                          fontSize: 0.1),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/icon_user.png",

                          width: 15,
                          height: 15,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                        labelText: 'Login',
                        labelStyle: TextStyle(
                            ),

                      ),
                    keyboardType: TextInputType.emailAddress,


                    ),
                  ),

                // Full Name TextField End
                heightSpace,
                heightSpace,
                // Password TextField Start

                   TextField(
                   controller: emailController,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                    checkEmail(value);

                    },

                     style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      errorText: verifEmail ? null : '',
                      errorStyle: TextStyle(
                          decorationColor: Colors.red,
                          height: 0,
                          fontSize: 0.1),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      labelText: 'E-mail',
                      labelStyle: TextStyle(
                          color: verifEmail ? Colors.black : Colors.red),
                    ),
                  ),

                // Password TextField End
                heightSpace,
                heightSpace,
                // Email Address TextField Start
                Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        blurRadius: 1.5,
                        spreadRadius: 1.5,
                        color: Colors.grey[200],
                      ),
                    ],
                  ),
                  child: TextField(
                    obscureText: visible,
                    style: TextStyle(color: Colors.black),
                    controller: passwordController,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      checkPassword(value);
                    },


                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/icon_password.png",

                          width: 15,
                          height: 15,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),


                      ),
                      errorText: verifPassword ? null : passwordVerification,
                      errorStyle: TextStyle(
                          decorationColor: Colors.red,
                          height: 0,
                          fontSize: 0.1),

                      labelStyle: TextStyle(
                          color:
                          verifPassword ? Colors.black : Colors.red),
                      labelText:
                          ("mot passe"),
                      suffixIcon: IconButton(
                        icon: Icon(visible
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            visible = !visible;
                          });
                        },
                      ),
                    ),
                    ),
                  ),



                // Ema
                //il Address TextField End
                ErrorMessage==''?Container():
                heightSpace,
                heightSpace,
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OTPScreen()));
                  },
                  borderRadius: BorderRadius.circular(5.0),
                  child: Container(
                    height: 50.0,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: primaryColor,
                    ),
                    child: Text(
                      'Continue',
                      style: wbuttonWhiteTextStyle,
                    ),
                  ),
                ),
                heightSpace,
              ],
            ),
          ),
        ],
      ),

    );
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
}



