import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = [
      {'image': 'assets/1.jpg', 'title': 'England'},
      {'image': 'assets/2.jpg', 'title': 'Peris'},
      {'image': 'assets/3.jpg', 'title': 'Thailand'},

    ];
    return
  Container(
        height: 260.0,
        padding: EdgeInsets.symmetric(vertical: 15.0),
        child: ListView.builder(
          itemCount: data.length,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            final item = data[index];
            return Container(

              margin: (index != data.length - 1)
                  ? EdgeInsets.only(left: 15.0)
                  : EdgeInsets.only(left: 15.0, right: 15.0),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    blurRadius: 1.0,
                    spreadRadius: 1.0,
                    color: Colors.grey[300],
                  )
                ],
                image: DecorationImage(
                  image: AssetImage(item['image']),
                  fit: BoxFit.cover,
                ),
              ),
              child: Wrap(
                children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    width: double.infinity,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(15.0)),
                      color: Colors.black.withOpacity(0.6),
                    ),
                    child: Text(
                      item['title'],
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );


  }
}