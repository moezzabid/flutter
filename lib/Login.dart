import 'package:flutter/material.dart';

class Login3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250.0,
            alignment: Alignment.bottomCenter,
            child: Stack(
              children: [
                Container(
                  height: 250.0,
                  width: MediaQuery.of(context).size.width,
                  child: CustomPaint(
                    size: Size(double.infinity, 250.0),
                    painter: CurvePainter(),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 250.0,
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(bottom: 30.0),
                  child: Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      border: Border.all(width: 3.0, color: Colors.white),
                      image: DecorationImage(
                        image: AssetImage('assets/user.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0),
          Text(
            'Welcome!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Sign in to continue',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),

          SizedBox(height: 30.0),

          // Email Field Start
          Theme(
            data: Theme.of(context).copyWith(
              primaryColor: Colors.red[800],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  prefixIcon: Icon(Icons.email),
                  fillColor: Colors.grey[200],
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.red[800], width: 1.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.red[100], width: 1.5),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.red[100], width: 1.5),
                  ),
                ),
              ),
            ),
          ),
          // Email Field End
          SizedBox(height: 20.0),
          // Password Field Start
          Theme(
            data: Theme.of(context).copyWith(
              primaryColor: Colors.red[800],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(Icons.vpn_key),
                  fillColor: Colors.grey[200],
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.red[800], width: 1.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.red[100], width: 1.5),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.red[100], width: 1.5),
                  ),
                ),
              ),
            ),
          ),
          // Password Field End
          SizedBox(height: 12.0),
          // Forgot Password Start
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: InkWell(
              onTap: () {},
              child: Text(
                'Forgot Password?',
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.red[800],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Forgot Password End
          SizedBox(height: 20.0),
          // Sign in button start
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Material(
              borderRadius: BorderRadius.circular(30.0),
              elevation: 3.0,
              child: InkWell(
                borderRadius: BorderRadius.circular(30.0),
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.fromLTRB(60.0, 15.0, 60.0, 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.red[800],
                  ),
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Sign in button End
          SizedBox(height: 25.0),
          // New User Text Start
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'New User?',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 3.0),
              InkWell(
                  onTap: () {},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red[800],
                    ),
                  )),
            ],
          ),
          // New User Text End
        ],
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.red[800];
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(0, 200.0);
    path.quadraticBezierTo(size.width / 2, 300.0, size.width, 200.0);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}