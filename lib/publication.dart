import 'package:flutter/material.dart';
import 'package:flutter_fini/navigation_bar.dart';
import 'package:transparent_image/transparent_image.dart';

class Publication extends StatefulWidget {
  @override
  _PublicationState createState() => _PublicationState();
}

class _PublicationState extends State<Publication> {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  int currentIndex = 0;

  changeIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }


  final data = [
    {
      'name': 'Moez abid',
      'thumb': 'assets/1.png',
      'time': '2 hrs',
      'caption': 'The car we drive say a lot about us.',
      'image':
      'https://images.unsplash.com/photo-1552519507-da3b142c6e3d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
      'type': 'image',
      'like': false,
      'totalLike': 26,
      'totalComments': 2
    },
    {
      'name': 'David Miller',
      'thumb': 'assets/3.png',
      'time': '9 hrs',
      'caption':
      'Push yourself, because no one else is going to do it for you.',
      'image': '',
      'type': 'quote',
      'like': true,
      'totalLike': 19,
      'totalComments': 159
    },
    {
      'name': 'Apollonia Warner',
      'thumb': 'assets/1.png',
      'time': '11 hrs',
      'caption': 'Good Morning!',
      'image':
      'https://images.unsplash.com/photo-1486673748761-a8d18475c757?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8cm9hZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80',
      'type': 'image',
      'like': false,
      'totalLike': 21,
      'totalComments': 15
    },
    {
      'name': 'Linnea Smith',
      'thumb': 'assets/2.png',
      'time': '1 day',
      'caption':
      'The harder you work for something, the greater you’ll feel when you achieve it.',
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
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF3B5997),
        title: Text(
          'Acceuil',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),



        automaticallyImplyLeading: false,

      ),

      body: ListView.builder(

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
                      '${item['totalComments']} Comments',
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
                            'Like',
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

      ),
      drawer: drawer1(),


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
                image: AssetImage('assets/1.png'),
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
                        image: AssetImage('assets/user.jpg'),
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
                        'Ellison Perry',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'test@abc.com',
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
              'Home',
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
              'Gallery',
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
              Icons.person,
              color: Colors.black,
            ),
            title: Text(
              'Profile',
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
              'Settings',
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
            onTap: () {},
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.red,
            ),
            title: Text(
              'Logout',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
  
}