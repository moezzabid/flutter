import 'package:flutter/material.dart';

class FullScreenImage extends StatelessWidget {
  final String imagePath;
  FullScreenImage({Key key, @required this.imagePath}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Hero(
          tag: imagePath,
          child: Image.asset(
            imagePath,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}