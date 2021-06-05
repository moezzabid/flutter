import 'package:flutter/material.dart';
import 'package:flutter_fini/constant/constant.dart';
import 'package:flutter_fini/otp_screen.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();


}

class _RegisterState extends State<Register> {

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
                    style: headingStyle,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      hintText: 'Nom',
                      hintStyle: greyHeadingStyle,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                // Full Name TextField End
                heightSpace,
                heightSpace,
                // Password TextField Start
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
                    style: headingStyle,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      hintText: 'Mot passe',
                      hintStyle: greyHeadingStyle,
                      border: InputBorder.none,
                    ),
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
                    style: headingStyle,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      hintText: 'Email Address',
                      hintStyle: greyHeadingStyle,
                      border: InputBorder.none,
                    ),
                  ),

                ),

                // Ema
                //il Address TextField End

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

  void Modal(context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        isDismissible: true,
        isScrollControlled: false,
        builder: (BuildContext bc) {
          return Container(
            decoration: BoxDecoration(
/*          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),*/
            ),
            height: 120,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                     // openGallery();
                      Navigator.pop(context);
                    },
                    child: Text(
                     ('profileGalery'),
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Divider(
                    height: 5,
                  ),
                  FlatButton(
                    onPressed: () {
                      //openCamera();
                      Navigator.pop(context);
                    },
                    child: Text(
                    ('profileCamera'),
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

}
