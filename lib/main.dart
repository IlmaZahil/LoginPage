import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page/signin_screen.dart';
import 'signup_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.srcATop),
          ),
          Image.asset(
            "images/main.jpg",
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  margin: EdgeInsets.only(top: 50, left: 30),
                  height: 60,
                  width: 80,
                  child: Icon(
                    Icons.image,
                    color: Colors.pinkAccent[700],
                    size: 40,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 40,
                    left: 30,
                  ),
                  child: Text(
                    "WELCOME TO \nPHOTOBOOTH!",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Spacer(),
                CustomButton(
                    label: "Sign Up",
                    btnColor: Colors.pinkAccent,
                    txtColor: Colors.white,
                    onPresed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignUpScreen()));
                    }),
                CustomButton(
                    label: "Sign In",
                    btnColor: Colors.white,
                    txtColor: Colors.pinkAccent,
                    onPresed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignInScreen()));
                    }),
                SizedBox(
                  height: 80,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String label;
  final Color btnColor;
  final Color txtColor;
  final VoidCallback onPresed;

  CustomButton({
    required this.label,
    required this.btnColor,
    required this.txtColor,
    required this.onPresed,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPresed,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 45, vertical: 15),
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 22,
              color: txtColor,
            ),
          ),
        ),
      ),
    );
  }
}
