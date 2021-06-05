import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_fini/message/full%20_screen%20_image.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MessageScreen2 extends StatefulWidget {
  final String name;
  final String imagePath;
  MessageScreen2({Key key, @required this.name, @required this.imagePath})
      : super(key: key);
  @override
  _MessageScreen2State createState() => _MessageScreen2State();
}

class _MessageScreen2State extends State<MessageScreen2> {
  final msgController = TextEditingController();
  DateTime now = DateTime.now();
  ScrollController _scrollController = new ScrollController();
  String amPm;
  final chatData = [


    {
      'role': 'sender',
      'msg': 'How are you?',
      'time': '9:38 AM',
      'read': 'read',
      'type': 'text'
    },
    {
      'role': 'me',
      'msg': 'Hi',
      'time': '9:36 AM',
      'read': 'read',
      'type': 'text'
    },
    {
      'role': 'sender',
      'msg': 'Hello',
      'time': '9:35 AM',
      'read': 'read',
      'type': 'text'
    },
  ];

  static List<String> choices = <String>['Report', 'Block'];

  @override
  void initState() {
    super.initState();
    _scrollToBottom();
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(0.0,
          duration: Duration(milliseconds: 300), curve: Curves.elasticOut);
    } else {
      Timer(Duration(milliseconds: 400), () => _scrollToBottom());
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/chat_bg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: Colors.grey.shade200.withOpacity(0.1),
            ),
            child: Theme(
              data: ThemeData(
                primaryColor: Colors.brown,
                fontFamily: 'Rubik',
              ),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  titleSpacing: 0.0,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 45.0,
                            width: 45.0,
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22.5),
                              image: DecorationImage(
                                image: AssetImage(widget.imagePath),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                widget.name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Rubik',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'COnnecte',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Rubik',
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.call, color: Colors.white),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.videocam, color: Colors.white),
                            onPressed: () {},
                          ),
                          PopupMenuButton<String>(
                            onSelected: choiceAction,
                            itemBuilder: (BuildContext context) {
                              return choices.map((String choice) {
                                return PopupMenuItem<String>(
                                  value: choice,
                                  child: Text(choice),
                                );
                              }).toList();
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                body: body(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  body() {
    double width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            controller: _scrollController,
            itemCount: chatData.length,
            reverse: true,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final item = chatData[index];
              return Container(
                width: width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: (item['role'] == 'sender')
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.end,
                  children: <Widget>[
                    Wrap(
                      children: <Widget>[
                        Padding(
                          padding: (item['role'] == 'sender')
                              ? EdgeInsets.only(right: 100.0)
                              : EdgeInsets.only(left: 100.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: (item['role'] == 'sender')
                                ? CrossAxisAlignment.start
                                : CrossAxisAlignment.end,
                            children: <Widget>[
                              (item['type'] == 'text')
                                  ? Container(
                                padding: EdgeInsets.all(10.0),
                                margin: EdgeInsets.only(
                                    left: 10.0, right: 10.0),
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(5.0),
                                  color: (item['role'] == 'sender')
                                      ? Colors.white
                                      : Colors.brown,
                                ),
                                child: Text(
                                  item['msg'],
                                  style: TextStyle(
                                    color: (item['role'] == 'sender')
                                        ? Colors.brown
                                        : Colors.white,
                                    fontSize: 15.0,
                                  ),
                                ),
                              )
                                  : (item['type'] == 'image')
                                  ? InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              FullScreenImage(
                                                imagePath:
                                                item['image'],
                                              )));
                                },
                                child: Hero(
                                  tag: item['image'],
                                  child: Container(
                                    width: 150.0,
                                    height: 150.0,
                                    margin: EdgeInsets.only(
                                        left: 10.0, right: 10.0),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(5.0),
                                      border: Border.all(
                                          width: 2.0,
                                          color: Colors.white),
                                      image: DecorationImage(
                                        image:
                                        AssetImage(item['image']),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                                  : Container(
                                padding: EdgeInsets.all(10.0),
                                margin: EdgeInsets.only(
                                    left: 10.0, right: 10.0),
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(5.0),
                                  color: (item['role'] == 'sender')
                                      ? Colors.white
                                      : Colors.brown,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                  (item['role'] == 'sender')
                                      ? MainAxisAlignment.start
                                      : MainAxisAlignment.end,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.group_add,
                                      color:
                                      (item['role'] == 'sender')
                                          ? Colors.brown
                                          : Colors.white,
                                    ),
                                    SizedBox(width: 10.0),
                                    Container(
                                      height: 8.0,
                                      width: 0.7,
                                      color:
                                      (item['role'] == 'sender')
                                          ? Colors.brown
                                          : Colors.white,
                                    ),
                                    SizedBox(width: 10.0),
                                    Text(
                                      item['contactName'],
                                      style: TextStyle(
                                        color:
                                        (item['role'] == 'sender')
                                            ? Colors.brown
                                            : Colors.white,
                                        fontSize: 15.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: (item['role'] == 'sender')
                                      ? MainAxisAlignment.start
                                      : MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    (item['role'] == 'sender')
                                        ? Container()
                                        : Icon(
                                      (item['read'] == 'read')
                                          ? Icons.done_all
                                          : Icons.check,
                                      color: Colors.white38,
                                      size: 16.0,
                                    ),
                                    SizedBox(
                                      width: 7.0,
                                    ),
                                    Text(
                                      item['time'],
                                      style: TextStyle(
                                        color: Colors.white38,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Container(
          width: width,
          height: 70.0,
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: width - 120.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white.withOpacity(0.2),
                ),
                child: TextField(
                  controller: msgController,
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Type a Message',
                    hintStyle: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white60,
                    ),
                    contentPadding: EdgeInsets.only(left: 10.0),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(width: 10.0),
              InkWell(
                borderRadius: BorderRadius.circular(20.0),
                onTap: () => _attachBottomSheet(context, width),
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white.withOpacity(0.3),
                  ),
                  child: Icon(
                    Icons.attach_file,
                    color: Colors.yellow,
                    size: 18.0,
                  ),
                ),
              ),
              SizedBox(width: 10.0),
              InkWell(
                borderRadius: BorderRadius.circular(20.0),
                onTap: () {
                  if (msgController.text != '') {
                    if (now.hour > 11) {
                      amPm = 'PM';
                    } else {
                      amPm = 'AM';
                    }
                    setState(() {
                      chatData.insert(0, {
                        'role': 'me',
                        'msg': msgController.text,
                        'time': (now.hour > 12)
                            ? '${now.hour - 12}:${now.minute} $amPm'
                            : '${now.hour}:${now.minute} $amPm',
                        'read': 'unread',
                        'type': 'text'
                      });
                      msgController.text = '';
                      _scrollController.animateTo(
                        0.0,
                        curve: Curves.easeOut,
                        duration: const Duration(milliseconds: 300),
                      );
                    });
                  }
                },
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white.withOpacity(0.3),
                  ),
                  child: Icon(
                    Icons.send,
                    color: Colors.yellow,
                    size: 18.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Bottom Sheet for Attach Here
  void _attachBottomSheet(context, width) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext bc) {
        return Container(
          width: width,
          color: Colors.transparent,
          margin: EdgeInsets.all(10.0),
          child: Container(
            padding: EdgeInsets.all(10.0 * 3.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            child: Wrap(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        getAttachTile(
                            Colors.blue,
                            Icon(Icons.note_add,
                                size: 24.0, color: Colors.white),
                            'Document'),
                        getAttachTile(
                            Colors.teal,
                            Icon(Icons.attach_money,
                                size: 24.0, color: Colors.white),
                            'Payment'),
                        getAttachTile(
                            Colors.red,
                            Icon(Icons.photo, size: 24.0, color: Colors.white),
                            'Gallery'),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        getAttachTile(
                            Colors.purple,
                            Icon(Icons.music_note,
                                size: 24.0, color: Colors.white),
                            'Audio'),
                        getAttachTile(
                            Colors.orange,
                            Icon(Icons.location_on,
                                size: 24.0, color: Colors.white),
                            'Location'),
                        getAttachTile(
                            Colors.indigo,
                            Icon(Icons.person, size: 24.0, color: Colors.white),
                            'Contact'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  // Bottom Sheet for Attach Ends Here

  getAttachTile(Color color, Icon icon, String title) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: color,
            ),
            child: icon,
          ),
          SizedBox(height: 10.0),
          Text(
            title,
            style: TextStyle(
              color: Colors.grey,
              fontFamily: 'Rubik',
              fontSize: 13.0,
            ),
          ),
        ],
      ),
    );
  }

  void choiceAction(String choice) {
    if (choice == 'Report') {
      Fluttertoast.showToast(
        msg: 'Report Clicked.',
        backgroundColor: Colors.black,
        textColor: Colors.white,
      );
    } else if (choice == 'Block') {
      Fluttertoast.showToast(
        msg: 'Block Clicked.',
        backgroundColor: Colors.black,
        textColor: Colors.white,
      );
    }
  }
}