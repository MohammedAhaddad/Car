import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class profail extends StatelessWidget {
  const profail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF1F2F3),
        appBar: AppBar(
          backgroundColor: const Color(0xffF1F2F3),
          elevation: 0,
          leading: InkWell(
            child: const Icon(
              Icons.arrow_back,
              color: Color(0xFF8E8E93),
            ),
            onTap: () {},
          ),
          actions: [
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset(
                          "assets/Imag/co.svg",
                          width: 20,
                        ),
                      ),
                      const Positioned(
                          top: 8,
                          left: 20,
                          child: CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.red,
                              child: Text(
                                "3",
                                style: TextStyle(fontSize: 10),
                              ))),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 40,
                ),
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: SvgPicture.asset(
                      "assets/Imag/dss.svg",
                      width: 15,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 30,
                ),
              ],
            ),
          ],
        ),
        body: ListView(physics: BouncingScrollPhysics(), children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                        radius: MediaQuery.of(context).size.width / 10,
                        backgroundImage:
                            const AssetImage('assets/Imag/Ellipse 66.png')),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text("Sebastian ",
                            style: TextStyle(
                                color: Color(0xFF1B1B1B),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Roboto")),
                        SizedBox(
                          height: MediaQuery.of(context).size.width / 35,
                        ),
                        const Text("BMW 3 Series/7 Series owner",
                            style: TextStyle(
                                color: Color(0xFF8E8E93),
                                fontSize: 12,
                                fontFamily: "Roboto"))
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          height: MediaQuery.of(context).size.height / 25,
                          width: MediaQuery.of(context).size.width / 5.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border:
                                  Border.all(color: const Color(0xFF1DB854))),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.add,
                                color: Color(0xFF1DB854),
                              ),
                              Text("Follow",
                                  style: TextStyle(
                                      color: Color(0xFF1DB854),
                                      fontSize: 12,
                                      fontFamily: "Roboto"))
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text("47",
                                  style: TextStyle(
                                      color: Color(0xFF1B1B1B),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Following",
                                  style: TextStyle(
                                      color: Color(0xFF8E8E93),
                                      fontSize: 14,
                                      fontFamily: "Roboto"))
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 10,
                          ),
                          Column(
                            children: [
                              Text("8798",
                                  style: TextStyle(
                                      color: Color(0xFF1B1B1B),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Follower",
                                  style: TextStyle(
                                      color: Color(0xFF8E8E93),
                                      fontSize: 14,
                                      fontFamily: "Roboto"))
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 10,
                          ),
                          Column(
                            children: [
                              Text("68",
                                  style: TextStyle(
                                      color: Color(0xFF1B1B1B),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Posts",
                                  style: TextStyle(
                                      color: Color(0xFF8E8E93),
                                      fontSize: 14,
                                      fontFamily: "Roboto"))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height / 1.5,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20))),
            child: Column(children: [
              Row(
                children: [
                  SvgPicture.asset("assets/Imag/icon101.svg"),
                  Text(" Common Functions",
                      style: TextStyle(
                          color: Color(0xFF8E8E93),
                          fontSize: 12,
                          fontFamily: "Roboto"))
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 8,
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFFF1F2F3)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/Imag/MyOrder.svg"),
                          Text("My order",
                              style: TextStyle(
                                  color: Color(0xFF1B1B1B),
                                  fontSize: 12,
                                  fontFamily: "Roboto"))
                        ]),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 8,
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFFF1F2F3)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/Imag/Maintain.svg"),
                          Text("Maintain",
                              style: TextStyle(
                                  color: Color(0xFF1B1B1B),
                                  fontSize: 12,
                                  fontFamily: "Roboto"))
                        ]),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 8,
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFFF1F2F3)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/Imag/E.svg"),
                          Text("Auto parts",
                              style: TextStyle(
                                  color: Color(0xFF1B1B1B),
                                  fontSize: 12,
                                  fontFamily: "Roboto"))
                        ]),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 8,
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFFF1F2F3)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/Imag/Drivingskills.svg"),
                          Text("Driving skills",
                              style: TextStyle(
                                  color: Color(0xFF1B1B1B),
                                  fontSize: 12,
                                  fontFamily: "Roboto"))
                        ]),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset("assets/Imag/carIcon.svg"),
                      Text("  My cars",
                          style: TextStyle(
                              color: Color(0xFF8E8E93),
                              fontSize: 12,
                              fontFamily: "Roboto"))
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Owned/Driven",
                            style: TextStyle(
                                color: Color(0xFF1B1B1B),
                                fontSize: 14,
                                fontFamily: "Roboto")),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 10,
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0xFFD1D1D6),
                    height: MediaQuery.of(context).size.height / 15,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Like List",
                            style: TextStyle(
                                color: Color(0xFF1B1B1B),
                                fontSize: 14,
                                fontFamily: "Roboto")),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 10,
                        )
                      ],
                    ),
                  ),

                  ///////////////////////////////////////////////////////
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.list_alt,
                        size: 15,
                      ),
                      Text("  Others",
                          style: TextStyle(
                              color: Color(0xFF8E8E93),
                              fontSize: 12,
                              fontFamily: "Roboto"))
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Feedback",
                            style: TextStyle(
                                color: Color(0xFF1B1B1B),
                                fontSize: 14,
                                fontFamily: "Roboto")),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 10,
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0xFFD1D1D6),
                    height: MediaQuery.of(context).size.height / 15,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Log Out",
                            style: TextStyle(
                                color: Color(0xFF1DB854),
                                fontSize: 14,
                                fontFamily: "Roboto")),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 10,
                        )
                      ],
                    ),
                  ),
                ],
              )
            ]),
          )
        ]));
  }
}
