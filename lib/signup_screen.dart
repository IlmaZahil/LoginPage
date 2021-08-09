import 'package:flutter/material.dart';

import 'main.dart';

class SignUpScreen extends StatelessWidget {
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
            "images/signup.png",
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
                    color: Colors.black,
                    size: 40,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 80,
                    left: 30,
                  ),
                  child: Text(
                    "WELCOME \nEVERYONE!",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.w600),
                  ),
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
                                "New\nAccount",
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
                                  Container(
                                    height: 60,
                                    width: 60,
                                    child: Center(
                                      child: Icon(Icons.camera_alt_outlined),
                                    ),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border:
                                            Border.all(color: Colors.black)),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("Upload Pictures"),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            top: 20,
                          ),
                          child: Text("Email"),
                        ),
                        CustomTextField(
                            label: "ilmazahil7@gmail.com",
                            prefixIcon: Icons.email),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            top: 20,
                          ),
                          child: Text("UserName"),
                        ),
                        CustomTextField(
                            label: "Ilma Zahil", prefixIcon: Icons.person),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            top: 20,
                          ),
                          child: Text("Password"),
                        ),
                        CustomTextField(
                            label: "*********", prefixIcon: Icons.lock),
                        SizedBox(
                          height: 50,
                        ),
                        CustomButton(
                          label: "Sign Up",
                          btnColor: Colors.brown.withOpacity(0.5),
                          txtColor: Colors.white,
                          onPressed: () {},
                        ),
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
            // decoration: InputDecoration(
            //     prefixIcon: Icon(
            //       prefixIcon,
            //       color: Colors.black,
            //     ),
            //     hintText: label,
            //     hintStyle: TextStyle(fontSize: 16, color: Colors.black)),
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
