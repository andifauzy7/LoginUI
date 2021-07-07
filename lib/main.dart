import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: LoginPage(),
    );
  }
}

class CustomShapeBorder extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    double x = 150, y = 32, r = 0.5;
    Path path = Path()
      ..addRRect(RRect.fromRectAndCorners(rect))
      ..moveTo(rect.bottomRight.dx - 30, rect.bottomCenter.dy)
      ..relativeQuadraticBezierTo(
          ((-x / 2) + (x / 6)) * (1 - r), 0, -x / 2 * r, y * r)
      ..relativeQuadraticBezierTo(
          -x / 6 * r, y * (1 - r), -x / 2 * (1 - r), y * (1 - r))
      ..relativeQuadraticBezierTo(
          ((-x / 2) + (x / 6)) * (1 - r), 0, -x / 2 * (1 - r), -y * (1 - r))
      ..relativeQuadraticBezierTo(-x / 6 * r, -y * r, -x / 2 * r, -y * r);
    return path;
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(32.0),
                child: Image.asset(
                  "asset/logo.png",
                  fit: BoxFit.cover,
                  width: 160,
                ),
              ),
            ),
            Expanded(
              child: CustomPaint(
                painter: OrangePainter(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(24.0),
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              "Please Log In",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          TextFormField(
                              decoration: InputDecoration(
                            labelText: "Email",
                            hintText: "johndoe@gmail.com",
                            suffix: Icon(Icons.email),
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.grey),
                          )),
                          SizedBox(
                            height: 8.0,
                          ),
                          TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: "Password",
                                hintText: "johndoe@gmail.com",
                                suffix: Icon(Icons.remove_red_eye),
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.bold, color: Colors.grey),
                              )),
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.white),
                        )),
                    Container(
                      padding: const EdgeInsets.only(top: 24.0),
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                          ),
                          onPressed: () {},
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          )),
                    ),
                    Container(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: Text(
                          "or sign in with",
                          style: TextStyle(color: Colors.white),
                        )),
                    Container(
                      padding: const EdgeInsets.only(top: 16.0),
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    "asset/facebook.png",
                                    fit: BoxFit.cover,
                                    height: 24,
                                  ),
                                  Text(
                                    'Facebook',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    "asset/google.png",
                                    fit: BoxFit.cover,
                                    height: 24,
                                  ),
                                  Text(
                                    'Google',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(32.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OrangePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();
    
    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = Color(0xFFF2663B);
    canvas.drawPath(mainBackground, paint);

    Path ovalPath = Path();
    ovalPath.moveTo(width, 0);
    ovalPath.quadraticBezierTo(width, height, 0, height);
    ovalPath.lineTo(width, height);
    ovalPath.close();

    paint.color = Color(0xFFF1592A);
    canvas.drawPath(ovalPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }

}
