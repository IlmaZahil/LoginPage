import 'package:flutter/material.dart';

import 'main.dart';

class SignInScreen extends StatelessWidget {
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
            "images/signin.png",
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
                    color: Colors.brown.withOpacity(0.5),
                    size: 40,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 80,
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
                SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30.0, right: 30, left: 30),
                          child: Row(
                            children: [
                              Text(
                                "Hello\nIlma Zahil",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 40,
                                    backgroundImage:
                                        AssetImage("images/prof.png"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        CustomTextField(
                            label: "*********", prefixIcon: Icons.lock),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 30.0),
                            child: Text(
                              "Forget Password?",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.brown.withOpacity(0.5),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomButton(
                          label: "Sign In",
                          btnColor: Colors.brown.withOpacity(0.5),
                          txtColor: Colors.white,
                          onPresed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MainScreen()));
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text(
                            "or Sign In with",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 15),
                            height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "images/gmail.png",
                                  height: 50,
                                ),
                                SizedBox(width: 30),
                                Image.asset(
                                  "images/fb.png",
                                  height: 50,
                                ),
                                SizedBox(width: 30),
                                Image.asset(
                                  "images/twitter.png",
                                  height: 50,
                                ),
                              ],
                            ))
                      ],
                    ),
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        )),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;
  final IconData prefixIcon;
  CustomTextField({required this.label, required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              Icon(prefixIcon, size: 20),
              SizedBox(width: 10),
              Text(label)
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 3,
            width: double.infinity,
            color: Colors.brown.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
