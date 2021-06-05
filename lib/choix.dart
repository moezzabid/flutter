import 'package:flutter/material.dart';
import 'package:flutter_fini/constant/constant.dart';
import 'package:flutter_fini/register.dart';
import 'package:flutter_fini/registerentreprise.dart';

class choix extends StatefulWidget {


  @override
  _State createState() => _State();
}

class _State extends State<choix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor:scaffoldBgColor,
body: Stack(

    children: <Widget>[
      Image.asset('assets/15.png'),
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
      heightSpace,
      heightSpace,
      heightSpace,
      heightSpace,
      heightSpace,
      heightSpace,
      heightSpace,
      heightSpace,
      heightSpace,
      heightSpace,
      heightSpace,
      heightSpace,
      heightSpace,
      heightSpace,
      heightSpace,
      heightSpace,
      heightSpace,
      heightSpace,
      heightSpace,
      heightSpace,
      heightSpace,
      heightSpace,
      heightSpace,
      heightSpace,
      heightSpace,
      heightSpace,
      heightSpace,
      heightSpace,
      heightSpace,

      InkWell(
        onTap: (

            ) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Register()));
        },
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.1
          ,
          padding: EdgeInsets.all(19),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),

            border: Border.all(width: 2.0, color: Colors.black),

          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset(
                'assets/7.jpeg',
                height: 40.0,
                width: 80.0,
                fit: BoxFit.fitHeight,
              ),




              Text(

                'Professionnel',
                style: TextStyle(
                    color:Colors.black, fontWeight: FontWeight.bold,fontSize: 20),
              ),
            ],
          ),
        ),
      ),
      heightSpace,
      heightSpace,

      InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => registeren()));
        },
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.1
          ,
          padding: EdgeInsets.all(19),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),

            border: Border.all(width: 2.0, color: Colors.black),

          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: <Widget>[
              Image.asset(
                'assets/6.jpeg',
                height: 40.0,
                width: 50,

              ),




              Text(

                'Entreprise',
                style: TextStyle(
                    color:Colors.black, fontWeight: FontWeight.bold,fontSize: 20),
              ),



            ],
          ),
        ),
      ),
      heightSpace,
      heightSpace,

      InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Register()));
        },
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.1
          ,
          padding: EdgeInsets.all(19),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),

            border: Border.all(width: 2.0, color: Colors.black),

          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: <Widget>[
              Image.asset(
                'assets/9.jpeg',
                height: 50.0,
                width: 60.0,

              ),




              Text(

                'Client Physique',
                style: TextStyle(
                    color:Colors.black, fontWeight: FontWeight.bold,fontSize: 20),
              ),


            ],
          ),
        ),
      ),
      heightSpace,
      heightSpace,

      InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Register()));
        },
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.1
          ,
          padding: EdgeInsets.all(19),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),

            border: Border.all(width: 2.0, color: Colors.black),

          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset(
                'assets/11.jpeg',
                height: 50.0,
                width: 60.0,


              ),




              Text(

                'Client Morale\n(Entreprise)',
                style: TextStyle(
                    color:Colors.black, fontWeight: FontWeight.bold,fontSize: 18),
              ),
            ],
          ),
        ),
      ),



    ],

  ),

),

      ],
    )
);

  }
}
