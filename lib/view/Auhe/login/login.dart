import 'dart:io';

import 'package:car/MyCostm%20widget/MyButton.dart';
import 'package:car/controler/Authentication/GoogleAuth.dart';
import 'package:car/view/Auhe/EnterVerrification/Verrification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          child: Icon(
            Icons.close,
            color: Colors.grey[500],
          ),
          onTap: () {
            exit(0);
          },
        ),
      ),
      body: ListView(physics: const BouncingScrollPhysics(), children: [
        Container(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 5, left: 10, right: 10),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                child: IntlPhoneField(
                  showCountryFlag: false,
                  decoration: InputDecoration(
                      labelText: 'Phone Number',
                      hintText: 'Phone Number',
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.cancel,
                            color: Colors.grey[300],
                          ))),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 15,
              ),
              Container(
                padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    bottom: MediaQuery.of(context).size.height / 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assets/Imag/icon-select.svg",
                    ),
                    const Text(
                      "  Agree to our",
                      style: TextStyle(
                          color: Color(0xFF8E8E93),
                          fontSize: 12,
                          fontFamily: "Roboto"),
                    ),
                    const Text("Terms",
                        style: TextStyle(
                            color: Color(0xFF1DB854),
                            fontSize: 12,
                            fontFamily: "Roboto")),
                    const Text("and",
                        style: TextStyle(
                            color: Color(0xFF8E8E93),
                            fontSize: 12,
                            fontFamily: "Roboto")),
                    const Text(" Data Policy. ",
                        style: TextStyle(
                            color: Color(0xFF1DB854),
                            fontSize: 12,
                            fontFamily: "Roboto"))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DefultBigButton(
                    width: 1.1,
                    radis: 20,
                    backGroundColor: const Color(0xFF1DB854),
                    ontab: () {
                      Get.to(Verrification());
                    },
                    text: "Continue",
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 7),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 10,
                        height: 1,
                        color: const Color(0xFFC7C7CC),
                      ),
                      const Text(" Login with ",
                          style: TextStyle(
                            color: Color(0xFFC7C7CC),
                            fontSize: 12,
                            fontFamily: "Roboto",
                          )),
                      Container(
                        width: MediaQuery.of(context).size.width / 10,
                        height: 1,
                        color: const Color(0xFFC7C7CC),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () async {
                          await GoogleAuth.signInGoogle();
                        },
                        child: CircleAvatar(
                          radius: MediaQuery.of(context).size.width / 15,
                          backgroundColor: Color(0xFFF1F2F3),
                          child: Center(
                            child: SvgPicture.asset("assets/Imag/search.svg"),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.width / 15,
                        backgroundColor: Color(0xFFF1F2F3),
                        child: Center(
                          child: InkWell(
                            child: SvgPicture.asset(
                                "assets/Imag/icons8-facebook.svg"),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.width / 15,
                        backgroundColor: Color(0xFFF1F2F3),
                        child: Center(
                          child: InkWell(
                            child: SvgPicture.asset(
                                "assets/Imag/icon-twitter.svg"),
                          ),
                        ),
                      )
                    ],
                  )
                ]),
              )
            ],
          ),
        )
      ]),
    );
  }
}
