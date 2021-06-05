import 'package:flutter/material.dart';
import 'package:flutter_fini/message/message_screen.dart';

class Chat2 extends StatefulWidget {
  @override
  _Chat2State createState() => _Chat2State();
}

class _Chat2State extends State<Chat2> {
  final activeList = [
    {'image': 'assets/user_profile/user_1.jpg'},
    {'image': 'assets/user_profile/user_2.jpg'},
    {'image': 'assets/user_profile/user_3.jpg'},
    {'image': 'assets/user_profile/user_4.jpg'},
    {'image': 'assets/user_profile/user_5.jpg'},
    {'image': 'assets/user_profile/user_6.jpg'}
  ];

  final chatList = [
    {
      'name': 'Moez',
      'image': 'assets/user_1.jpg',
      'time': '5m',
      'msg': 'Hello',
      'msgNumber': '3',
      'type': 'msg'
    },
    {
      'name': 'lotfi',
      'image': 'assets/user_2.jpg',
      'time': '14m',
      'msg': 'Hello',
      'msgNumber': '8',
      'type': 'file'
    },
    {
      'name': 'Nawres',
      'image': 'assets/user_3.jpg',
      'time': '20m',
      'msg': 'Hello',
      'msgNumber': '0',
      'type': 'contact'
    },
    {
      'name': 'amel',
      'image': 'assets/user_4.jpg',
      'time': '1d',
      'msg': 'Hello',
      'msgNumber': '6',
      'type': 'msg'
    },
    {
      'name': 'Sahar',
      'image': 'assets/user_5.jpg',
      'time': '2d',
      'msg': 'bonjour',
      'msgNumber': '0',
      'type': 'file'
    },
    {
      'name': 'mourad',
      'image': 'assets/user_6.jpg',
      'time': '2d',
      'msg': 'bonjour',
      'msgNumber': '0',
      'type': 'contact'
    },
    {
      'name': 'mohamed',
      'image': 'assets/user_7.jpg',
      'time': '2d',
      'msg': 'bonjour',
      'msgNumber': '0',
      'type': 'file'
    },
    {
      'name': 'Mahmoud',
      'image': 'assets/user_8.jpg',
      'time': '2d',
      'msg': 'Hello',
      'msgNumber': '2',
      'type': 'contact'
    }
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Theme(
      data: ThemeData(
        primaryColor: Colors.brown,
        fontFamily: 'Rubik',
      ),
      child: Scaffold(
        backgroundColor: Colors.brown,

        body: Stack(
          children: [
            Container(
              height: (height * 0.15),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Active',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    height: (height * 0.15) - 50.0,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: activeList.length,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        final item = activeList[index];
                        return InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: (index == activeList.length - 1)
                                ? EdgeInsets.symmetric(horizontal: 10.0)
                                : EdgeInsets.only(left: 10.0),
                            child: Container(
                              height: (height * 0.15) - 50.0,
                              width: (height * 0.15) - 50.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    ((height * 0.15) - 50.0) / 2.0),
                                border:
                                Border.all(width: 1.0, color: Colors.amber),
                                image: DecorationImage(
                                  image: AssetImage(item['image']),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.82,
              minChildSize: 0.82,
              maxChildSize: 1.0,
              builder: (BuildContext context, myscrollController) {
                return ClipRRect(
                  borderRadius:
                  BorderRadius.vertical(top: Radius.circular(20.0)),
                  child: Container(
                    color: Colors.white,
                    child: ListView.builder(
                      itemCount: chatList.length,
                      physics: BouncingScrollPhysics(),
                      controller: myscrollController,
                      itemBuilder: (context, index) {
                        final item = chatList[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MessageScreen2(
                                        name: item['name'],
                                        imagePath: item['image'])));
                          },
                          child: Container(
                            width: width,
                            height: 90.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Hero(
                                        tag: item['image'],
                                        child: InkWell(
                                          onTap: () {},
                                          child: Container(
                                            height: 60.0,
                                            width: 60.0,
                                            alignment: Alignment.topRight,
                                            padding: EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(30.0),
                                              image: DecorationImage(
                                                image:
                                                AssetImage(item['image']),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                        width - ((10.0 * 2) + 60.0 + 30.0),
                                        padding: EdgeInsets.all(10.0),
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  item['name'],
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16.0,
                                                    fontFamily: 'Rubik',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  maxLines: 1,
                                                  overflow:
                                                  TextOverflow.ellipsis,
                                                ),
                                                SizedBox(width: 10.0),
                                                Text(
                                                  item['time'],
                                                  style: TextStyle(
                                                    color: Colors.grey
                                                        .withOpacity(0.6),
                                                    fontSize: 11.0,
                                                    fontFamily: 'Rubik',
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 10.0),
                                            (item['type'] == 'msg')
                                                ? Text(
                                              item['msg'],
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14.0,
                                                fontFamily: 'Rubik',
                                              ),
                                              maxLines: 1,
                                              overflow:
                                              TextOverflow.ellipsis,
                                            )
                                                : (item['type'] == 'file')
                                                ? Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.attach_file,
                                                  color: Colors.grey,
                                                  size: 16.0,
                                                ),
                                                SizedBox(width: 3.0),
                                                Text(
                                                  ' pdf',
                                                  style: TextStyle(
                                                    color:
                                                    Colors.grey,
                                                    fontSize: 14.0,
                                                    fontFamily:
                                                    'Rubik',
                                                  ),
                                                  maxLines: 1,
                                                  overflow:
                                                  TextOverflow
                                                      .ellipsis,
                                                )
                                              ],
                                            )
                                                : Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.contacts,
                                                  color: Colors.grey,
                                                  size: 16.0,
                                                ),
                                                SizedBox(width: 3.0),
                                                Text(
                                                  ' contact',
                                                  style: TextStyle(
                                                    color:
                                                    Colors.grey,
                                                    fontSize: 14.0,
                                                    fontFamily:
                                                    'Rubik',
                                                  ),
                                                  maxLines: 1,
                                                  overflow:
                                                  TextOverflow
                                                      .ellipsis,
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      (item['msgNumber'] != '0')
                                          ? Container(
                                        height: 20.0,
                                        width: 20.0,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.brown,
                                          borderRadius:
                                          BorderRadius.circular(10.0),
                                        ),
                                        child: Text(
                                          item['msgNumber'],
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14.0,
                                            fontFamily: 'Rubik',
                                          ),
                                        ),
                                      )
                                          : Container(),
                                    ],
                                  ),
                                ),
                                (index != (chatList.length - 1))
                                    ? Container(
                                  width: width - (10.0 * 2.0),
                                  height: 0.6,
                                  color: Colors.brown.withOpacity(0.20),
                                )
                                    : Container(),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}