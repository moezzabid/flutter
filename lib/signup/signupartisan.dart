import 'package:flutter/material.dart';
import 'package:flutter_fini/Animation/fadeIn.dart';
import 'package:flutter_fini/Home/home_main.dart';
import 'package:flutter_fini/Home/login1.dart';
import 'package:flutter_fini/otp_screen.dart';
import 'package:international_phone_input/international_phone_input.dart';



//My Own Imports


class Signupartisan extends StatefulWidget {
  @override
  _SignupartisanState createState() => _SignupartisanState();
}

class _SignupartisanState extends State<Signupartisan> {
  List<ListItem> _dropdownItems = [
    ListItem(1, " Ex: Plombier"),
    ListItem(2, "Electrecien"),
    ListItem(3, "Jardinier"),
    ListItem(4, "Mançon")
  ];
  List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  ListItem _selectedItem;
  bool _obscureText = true;
  bool _obscureText1 = true;
  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
    _selectedItem = _dropdownMenuItems[0].value;
  }
  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem>> items = [];
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }
  // Toggles the password show status
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
  String phoneNumber;
  String phoneIsoCode;

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
  void onPhoneNumberChange(
      String number, String internationalizedPhoneNumber, String isoCode) {
    setState(() {
      phoneNumber = number;
      phoneIsoCode = isoCode;
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


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
       // SizedBox(width: ,),
    // Image.asset('assets/hh.png',height: 50,),
      Text("BH-Assurance" )

    ],
    ),

    leading: IconButton(
    icon: Icon(
    Icons.arrow_back,
    color: Colors.white,
    ),
    onPressed: () => Navigator.pop(context),
    ),
        ),
    body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 30.0, right: 30.0, left: 30.0),
            child: FadeIn(
              1.0,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    child: Text(
                      "Se connecter",
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
                        MaterialPageRoute(builder: (context) => Login1()),
                      );
                    },
                  ),
                  Text(
                    'Inscrivez-vous',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Alatsi',
                    ),
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
                  height: 18.0,
                ),

                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FadeIn(
                          1.4,
                          InternationalPhoneInput(
                            onPhoneNumberChange: onPhoneNumberChange,
                            initialPhoneNumber: phoneNumber,
                            initialSelection: phoneIsoCode,
                            enabledCountries: [
                              '+216',


                            ],
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(15.0),
                              hintText: 'Numero Tel',
                             // hintStyle: greyHeadingStyle,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        FadeIn(
                          1.4,
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Nom',
                              contentPadding:
                                  const EdgeInsets.only(top: 12.0, bottom: 12.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        FadeIn(
                          1.4,
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              contentPadding:
                              const EdgeInsets.only(top: 12.0, bottom: 12.0),
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
                              hintText: 'Mot Passe',
                              suffixIcon: IconButton(
                                icon: Icon(Icons.remove_red_eye),

                              ),
                              contentPadding:
                                  const EdgeInsets.only(top: 12.0, bottom: 12.0),
                            ),
                            obscureText: _obscureText,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        FadeIn(
                          1.8,
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Repeter mot passe',
                              suffixIcon: IconButton(
                                icon: Icon(Icons.remove_red_eye),

                              ),
                              contentPadding:
                                  const EdgeInsets.only(top: 12.0, bottom: 12.0),
                            ),
                            obscureText: _obscureText1,
                          ),
                        ),
                        FadeIn(
                            2.0,
                            Container(
                              width: 700,
                              padding: EdgeInsets.all(20.0),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<ListItem>(
                                    value: _selectedItem,
                                    items: _dropdownMenuItems,
                                    onChanged: (value) {
                                      setState(() {
                                        _selectedItem = value;
                                      });
                                    }),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),

                FadeIn(
                  2.0,
                  InkWell(
                    child: Container(
                      height: 40.0,
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
                                  "S'inscrire",
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
                        MaterialPageRoute(builder: (context) => OTPScreen()),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                FadeIn(
                  2.2,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'tu est deja un compte',
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
                          'se connecter',
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
                            MaterialPageRoute(builder: (context) => Login1()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}
