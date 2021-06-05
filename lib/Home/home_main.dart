



import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fini/Home/homeconstant/main_slider.dart';
import 'package:flutter_fini/Home/homeconstant/main_slider2.dart';
import 'package:flutter_fini/Home/login1.dart';
import 'package:flutter_fini/constant/constant.dart';
import 'package:page_transition/page_transition.dart';

class HomeMain extends StatefulWidget {
  const HomeMain ({Key key}) : super(key: key);

  @override
  _HomeMain_State createState() => _HomeMain_State();
}
bool descTextShowFlag=false ;
class _HomeMain_State extends State<HomeMain> {

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
          SizedBox(width: 10,),
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



      actions: <Widget>[

      IconButton(
icon: Icon(Icons.supervised_user_circle, color: whiteColor),
onPressed: () {
  Navigator.push(
    context,
    PageTransition(
      type: PageTransitionType.size,
      alignment: Alignment.bottomCenter,
child: Login1(),
    ),

  );
},
),
],
),
      body: Container(

        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bh.png'),
                fit: BoxFit.cover
            )
        ),

    child: Container(
    color: Colors.black.withOpacity(0.5),
    child: SingleChildScrollView(
    padding: EdgeInsets.only(bottom: 50),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Container(
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('assets/55.png'),
    fit: BoxFit.fill)),
    child: Padding(
    padding:
    const EdgeInsets.only(top: 4, left: 8, bottom: 20),
    child: Text(
    "BIenvenue",
    style: TextStyle(
    color: Colors.white,
    fontSize: 20,
    ),
    ),
    ),
    ),


      MainSlider(),
      Padding(
        padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
        child: Text(
          "bonjour cv oui tre sbien merci bcqsdfd sgdfhd hdfgdfgfd gdf gdf gdfgdfg"

              "gfdgdfgfdgfdg dfgdfg dgdfg ",
          maxLines: descTextShowFlag ? 20 : 2,
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 8.0,right: 10),
        child: InkWell(
          onTap: () {
            setState(() {
              descTextShowFlag = !descTextShowFlag;
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[



          Text(
                "Plus",
            style: TextStyle(color: Colors.blue),
              ),

            ],
          ),
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/55.png'),
                fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.only(top: 4, left: 8, bottom: 17),
          child: Text(
            "NOs Services",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),

      ),
SizedBox(height: 20),
      MainSlider2(),
],

      ),


      ]
    )

    )

)
    )

    );

  }
  codeShortForListTile(String title, String subtitle) {
    return ListTile(
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle));
  }

}

