import 'package:car/view/car/car-Details%E2%80%931/carDetails_1.dart';
import 'package:car/view/car/car-Details/pages/FAQ.dart';
import 'package:car/view/car/car-Details/pages/Price.dart';
import 'package:car/view/car/car-Details/pages/Reviews.dart';
import 'package:car/view/car/carDetailsPrice/carDetailsPrice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class carDetails extends StatelessWidget {
  const carDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(physics: BouncingScrollPhysics(), children: [
        Stack(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(40),
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width / 1.2,
              child: Image.asset(
                "assets/Imag/p718.png",
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Color(0xFFAAB6C3),
                      )),
                  Row(
                    children: [
                      Container(
                        child: DropdownButton(
                          style: const TextStyle(
                              color: Color(0xFF8E8E93), fontSize: 10),
                          iconSize: 15,
                          value: "Bangkok",
                          items: [
                            'Bangkok',
                            'Bangkok1',
                            'Bangkok2',
                            'Bangkok3',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (v) {},
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/Imag/like.svg")),
                      IconButton(
                          onPressed: () {},
                          icon: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: SvgPicture.asset(
                              "assets/Imag/Shar2.svg",
                            ),
                          )),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width / 9,
              right: MediaQuery.of(context).size.width / 9,
              top: MediaQuery.of(context).size.height / 2.8,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(() => carDetails_1());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/Imag/123.png'),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5)),
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width / 6.5,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("+200",
                                  style: TextStyle(
                                      fontSize: 8,
                                      color: Colors.white,
                                      fontFamily: "Roboto")),
                              Text("Images",
                                  style: TextStyle(
                                      fontSize: 8,
                                      color: Color(0xFF8E8E93),
                                      fontFamily: "Roboto"))
                            ],
                          )),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 20,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => carDetails_1);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/Imag/456.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width / 6.5,
                      child: Container(
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(0, 0, 0, 0.3),
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("+6",
                                  style: TextStyle(
                                      fontSize: 8,
                                      color: Colors.white,
                                      fontFamily: "Roboto")),
                              Text("Exterior",
                                  style: TextStyle(
                                      fontSize: 8,
                                      color: Color(0xFF8E8E93),
                                      fontFamily: "Roboto"))
                            ],
                          )),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 20,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => carDetails_1);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/Imag/789.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width / 6.5,
                      child: Container(
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(0, 0, 0, 0.3),
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("+450",
                                  style: TextStyle(
                                      fontSize: 8,
                                      color: Colors.white,
                                      fontFamily: "Roboto")),
                              Text("Interior",
                                  style: TextStyle(
                                      fontSize: 8,
                                      color: Color(0xFF8E8E93),
                                      fontFamily: "Roboto"))
                            ],
                          )),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 20,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => carDetails_1);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/Imag/10.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width / 6.5,
                      child: Container(
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(0, 0, 0, 0.3),
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("+240",
                                  style: TextStyle(
                                      fontSize: 8,
                                      color: Colors.white,
                                      fontFamily: "Roboto")),
                              Text("Videos",
                                  style: TextStyle(
                                      fontSize: 8,
                                      color: Color(0xFF8E8E93),
                                      fontFamily: "Roboto"))
                            ],
                          )),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xFFF1F2F3),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Porsche 718",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontFamily: "Roboto")),
                          Row(
                            children: [
                              Text("Compare",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFF8E8E93),
                                      fontFamily: "Roboto")),
                              Checkbox(value: false, onChanged: (v) {})
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text("\$62,000.00-\$74,000.00  ",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF1DB854),
                                  fontFamily: "Roboto"))
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Color(0xFF1DB854),
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF1DB854),
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF1DB854),
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF1DB854),
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF1DB854),
                                size: 20,
                              ),
                              Text("  268 review",
                                  style: TextStyle(
                                      color: Color(0xFF8E8E93),
                                      fontSize: 12,
                                      fontFamily: "Roboto"))
                            ],
                          ),
                          Row(
                            children: [
                              Text("Rate This car",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFF1DB854),
                                      fontFamily: "Roboto"))
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Key Specs",
                              style: TextStyle(
                                  color: Color(0xFF8E8E93),
                                  fontSize: 14,
                                  fontFamily: "Roboto")),
                          InkWell(
                            onTap: () {},
                            child: Row(
                              children: [
                                Text("All Specs",
                                    style: TextStyle(
                                        color: Color(0xFF1DB854),
                                        fontSize: 12,
                                        fontFamily: "Roboto")),
                                Icon(Icons.arrow_forward_ios,
                                    color: Color(0xFF1DB854), size: 13)
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            height: MediaQuery.of(context).size.height / 6,
                            width: MediaQuery.of(context).size.width / 3.5,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset("assets/Imag/Group833.svg"),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("3995 CC",
                                        style: TextStyle(
                                            color: Color(0xFF1B1B1B),
                                            fontSize: 12,
                                            fontFamily: "Roboto")),
                                    Text("Engine Power",
                                        style: TextStyle(
                                            color: Color(0xFF8E8E93),
                                            fontSize: 10,
                                            fontFamily: "Roboto"))
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            height: MediaQuery.of(context).size.height / 6,
                            width: MediaQuery.of(context).size.width / 3.5,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset("assets/Imag/Group 839.svg"),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("360 N·m",
                                        style: TextStyle(
                                            color: Color(0xFF1B1B1B),
                                            fontSize: 12,
                                            fontFamily: "Roboto")),
                                    Text("Max Torque",
                                        style: TextStyle(
                                            color: Color(0xFF8E8E93),
                                            fontSize: 10,
                                            fontFamily: "Roboto"))
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            height: MediaQuery.of(context).size.height / 6,
                            width: MediaQuery.of(context).size.width / 3.5,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset("assets/Imag/Group 838.svg"),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("360 N·m",
                                        style: TextStyle(
                                            color: Color(0xFF1B1B1B),
                                            fontSize: 12,
                                            fontFamily: "Roboto")),
                                    Text("Max Torque",
                                        style: TextStyle(
                                            color: Color(0xFF8E8E93),
                                            fontSize: 10,
                                            fontFamily: "Roboto"))
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: DefaultTabController(
                          length: 3,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width / 1.5,
                                    child: TabBar(
                                      tabs: [
                                        const Tab(
                                          text: "Price",
                                        ),
                                        const Tab(
                                          text: "Reviews",
                                        ),
                                        const Tab(
                                          text: "FAQ",
                                        ),
                                      ],
                                      unselectedLabelStyle: const TextStyle(
                                          fontSize: 12, fontFamily: "Roboto"),
                                      labelStyle: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Roboto"),
                                      onTap: (int selectedTabIndex) {},
                                      overlayColor: MaterialStateProperty.all(
                                          const Color(0xFF1DB854)),
                                      labelColor: const Color(0xFF1DB854),
                                      unselectedLabelColor:
                                          const Color(0xFF8E8E93),
                                      indicatorColor: const Color(0xFF1DB854),
                                      //  indicatorPadding: const EdgeInsets.all(10),
                                    )),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height / 1.1,
                                  child: TabBarView(
                                    children: [
                                      Price(),
                                      Reviews(),
                                      FAQ(),
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                )
              ]),
        )
      ]),
    );
  }
}
