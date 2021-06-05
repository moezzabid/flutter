import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
class navigation extends StatefulWidget {
  const navigation({Key key}) : super(key: key);

  @override
  _navigationState createState() => _navigationState();
}

class _navigationState extends State<navigation> {
  int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        animationDuration: Duration(milliseconds: 300),
        buttonBackgroundColor: Colors.teal,
        color: Colors.teal,
        items: <Widget>[
          Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.compare_arrows,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (int i) => changePage(i),
      ),
      body: (currentIndex == 0)
          ? Center(
        child: Text('Tab 1'),
      )
          : (currentIndex == 1)
          ? Center(
        child: Text('Tab 2'),
      )
          : Center(
        child: Text('Tab 3'),
      ),
    );

  }
}
