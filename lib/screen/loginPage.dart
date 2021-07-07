import 'package:flutter/material.dart';
import 'package:flutter_app/widget/orangePainter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBar(),
      body: Column(
        children: [
          Expanded(
            child: CustomPaint(
              painter: OrangePainter(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  formLogin(),
                  forgotPassword(),
                  signIn(),
                  signInOption(),
                  signInOtherButton(),
                  signUp(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  PreferredSize appBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(120),
      child: SafeArea(
          top: true,
          child: Container(
            child: Center(
              child: Image.asset(
                "asset/logo.png",
                fit: BoxFit.cover,
                width: 160,
              ),
            ),
          )),
    );
  }

  Container formLogin() {
    return Container(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: EdgeInsets.all(24.0),
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.all(Radius.circular(10))),
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
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
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
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        )),
                  ],
                ),
              ),
            ),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border:
                  Border.all(width: 5, color: Color(0xFFF2663B))
                //Color(0xFFF2663B);
              ),
              child: Center(
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("asset/key.png"),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Container forgotPassword() {
    return Container(
        padding: const EdgeInsets.only(top: 24.0),
        child: Text(
          "Forgot Password?",
          style: TextStyle(color: Colors.white),
        ));
  }

  Container signIn(){
    return Container(
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
    );
  }

  Container signInOption() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      padding: const EdgeInsets.only(top: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: new Container(
                margin: const EdgeInsets.only(right: 8.0),
                child: Divider(
                  color: Colors.white,
                  height: 36,
                )),
          ),
          Text(
            "or sign in with",
            style: TextStyle(color: Colors.white),
          ),
          Expanded(
            child: new Container(
                margin: const EdgeInsets.only(left: 8.0),
                child: Divider(
                  color: Colors.white,
                  height: 36,
                )),
          ),
        ],
      ),
    );
  }

  Container signInOtherButton(){
    return Container(
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
    );
  }

  Container signUp(){
    return Container(
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
    );
  }
}
