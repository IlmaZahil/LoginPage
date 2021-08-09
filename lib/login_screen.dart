import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
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
            "images/signin.jpg",
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
                    top: 40,
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
                                ],
                              ),
                            ],
                          ),
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
