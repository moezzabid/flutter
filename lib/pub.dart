import 'package:flutter/material.dart';
import 'package:flutter_fini/Home/login1.dart';
import 'package:flutter_fini/Login2.dart';
import 'package:flutter_fini/message/message.dart';
import 'package:flutter_fini/profile.dart';
import 'package:transparent_image/transparent_image.dart';

class BottomNavigationBar3 extends StatefulWidget {
  @override
  _BottomNavigationBar3State createState() => _BottomNavigationBar3State();
}

class _BottomNavigationBar3State extends State<BottomNavigationBar3> {
  int currentIndex = 0;

  changeIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }
  final data = [
    {
      'name': 'Moez abid',
      'thumb': 'assets/user_1.jpg',
      'time': '2 hrs',
      'caption': 'Je suis a la recherche d\'un MAÇON pour un chantier .',
      'image':
      'assets/1.png',
      'type': 'image',
      'like': false,
      'totalLike': 26,
      'totalComments': 2
    },
    {
      'name': 'Sahar ouali',
      'thumb': 'assets/user_3.jpg',
      'time': '9 hrs',
      'caption':
      'je cherche un technicien parabole j\'ai un probleme tres urgent.',
      'image': '',
      'type': 'quote',
      'like': true,
      'totalLike': 19,
      'totalComments': 159
    },
    {
      'name': 'Mahmoud Sendi',
      'thumb': 'assets/user_1.jpg',
      'time': '11 hrs',
      'caption': 'Le robinet est cassé !! j\'ai besoin d\'un plombier',
      'image':
      'https://www.renovation-et-decoration.com/wp-content/uploads/2018/06/plombier.jpg',
      'type': 'image',
      'like': false,
      'totalLike': 21,
      'totalComments': 15
    },
    {
      'name': 'Nawress ben yeddes',
      'thumb': 'assets/user_2.jpg',
      'time': '1 day',
      'caption':
      'je suis a la recherche d\'un travaille dans le domaine d\'electricite.',
      'image': '',
      'type': 'quote',
      'like': false,
      'totalLike': 5,
      'totalComments': 10
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          'Acceuil',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

      ),
      drawer: drawer1(),
      bottomNavigationBar: Container(
        height: 70.0,
        child: BottomAppBar(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              getBottomBarItemTile(0, Icons.home),
              getBottomBarItemTile(1, Icons.date_range),
              getBottomBarItemTile(2, Icons.message),
              getBottomBarItemTile(3, Icons.map),
              getBottomBarItemTile(4, Icons.person),
            ],
          ),
        ),
      ),
      body: (currentIndex == 0)
         ?  ListView.builder(

        itemCount: data.length,
        // physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final item = data[index];
          int totalLike = item['totalLike'];
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                          image: AssetImage(item['thumb']),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['name'],
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            item['time'],
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.grey[800],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              (item['caption'] != '')
                  ? Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  item['caption'],
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              )
                  : Container(),
              SizedBox(height: 10.0),
              (item['image'] != '')
                  ? FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: item['image'],
                fit: BoxFit.cover,
              )
                  : Container(),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 24.0,
                          height: 24.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Color(0xFF3B5997),
                          ),
                          child: Icon(
                            Icons.thumb_up,
                            size: 12.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          '${item['totalLike']}',
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                    Text(
                      '${item['totalComments']} Commentaire',
                      style: TextStyle(fontSize: 13.0),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 1.0,
                color: Colors.grey[300],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          item['like'] = !item['like'];
                          if (!item['like']) {
                            totalLike = totalLike + 1;
                            item['totalLike'] = totalLike;
                          } else {
                            totalLike = totalLike - 1;
                            item['totalLike'] = totalLike;
                          }
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.thumb_up,
                            color: (item['like'])
                                ? Colors.grey[500]
                                : Color(0xFF3B5997),
                            size: 20.0,
                          ),
                          SizedBox(width: 5.0),
                          Text(
                            'j\'aime',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.comment,
                          color: Colors.grey[500],
                          size: 20.0,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          'Comment',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.grey[500],
                          size: 20.0,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          'Share',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 10.0,
                color: Colors.grey[300],
              ),
            ],
          );

        },

      )
          : (currentIndex == 1)
          ? Center(
        child: Text('Tab 2'),
      )
          : (currentIndex == 2)
          ? Container(

        child: Chat2(),
      )
          : (currentIndex == 3)
          ? Center(
        child: Text('Tab 4'),
      )
         : Center(
            child: Profile3() ,
          )
    );
  }


  getBottomBarItemTile(int index, icon) {
    return InkWell(
      borderRadius: BorderRadius.circular(30.0),
      focusColor: Colors.red,
      onTap: () {
        changeIndex(index);
      },
      child: Container(
        height: 50.0,
        width: 50.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color:
          (currentIndex == index) ? Colors.grey[100] : Colors.transparent,
        ),
        child: Icon(icon,
            size: 30.0,
            color: (currentIndex == index) ? Colors.red : Colors.grey),
      ),
    );
  }
  Drawer drawer1() {
    return Drawer(
      child: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 200.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bh.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35.0),
                      image: DecorationImage(
                        image: AssetImage('assets/2.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15.0),
                  color: Colors.black.withOpacity(0.4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Moez abid',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'moez.94@live.com',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: Text(
              'Acceuil',
              style: TextStyle(color: Colors.black),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15.0,
              color: Colors.black,
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.photo_album,
              color: Colors.black,
            ),
            title: Text(
              'Rend-vous',
              style: TextStyle(color: Colors.black),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15.0,
              color: Colors.black,
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            title: Text(
              'Notifications',
              style: TextStyle(color: Colors.black),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15.0,
              color: Colors.black,
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.calendar_view_day,
              color: Colors.black,
            ),
            title: Text(
              'Calendrier',
              style: TextStyle(color: Colors.black),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15.0,
              color: Colors.black,
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.calendar_view_day,
              color: Colors.black,
            ),
            title: Text(
              'Colaborteur',
              style: TextStyle(color: Colors.black),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15.0,
              color: Colors.black,
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.calendar_view_day,
              color: Colors.black,
            ),
            title: Text(
              'Reclamation',
              style: TextStyle(color: Colors.black),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15.0,
              color: Colors.black,
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            title: Text(
              'Parametre',
              style: TextStyle(color: Colors.black),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15.0,
              color: Colors.black,
            ),
          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Login1()));

            },
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.red,
            ),
            title: Text(
              'Deconnecter',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}