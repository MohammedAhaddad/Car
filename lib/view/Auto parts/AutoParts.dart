import 'package:car/view/My%20Order/MyOrder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AutoParts extends StatelessWidget {
  const AutoParts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
          backgroundColor: const Color(0xFFFFFFFF),
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Color(0xFFAAB6C3),
              )),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Auto parts",
                  style: TextStyle(
                      color: Color(0xFF1B1B1B),
                      fontSize: 14,
                      fontFamily: "Roboto"),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 4,
                ),
                InkWell(
                  onTap: () {},
                  child: Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color(0xFFF1F2F3),
                        child: SvgPicture.asset(
                          "assets/Imag/Path 1576.svg",
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
                  width: MediaQuery.of(context).size.width / 20,
                ),
              ],
            )
          ]),
      body: ListView(physics: BouncingScrollPhysics(), children: [
        Container(
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width / 1.08,
          child: CupertinoSearchTextField(
              backgroundColor: const Color(0xFFF1F2F3),
              borderRadius: BorderRadius.circular(30),
              prefixIcon: SvgPicture.asset("assets/Imag/pan.svg")),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: 10.0,
              left: MediaQuery.of(context).size.width / 12,
              right: MediaQuery.of(context).size.width / 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFFF1F2F3)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/Imag/Group 845.svg"),
                        ]),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  const Text("My order",
                      style: TextStyle(
                          color: Color(0xFF1B1B1B),
                          fontSize: 12,
                          fontFamily: "Roboto"))
                ],
              ),
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFFF1F2F3)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/Imag/Wheels.svg"),
                        ]),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  const Text("Wheels",
                      style: TextStyle(
                          color: Color(0xFF1B1B1B),
                          fontSize: 12,
                          fontFamily: "Roboto"))
                ],
              ),
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFFF1F2F3)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/Imag/light.svg"),
                        ]),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  const Text("Light",
                      style: TextStyle(
                          color: Color(0xFF1B1B1B),
                          fontSize: 12,
                          fontFamily: "Roboto"))
                ],
              ),

              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFFF1F2F3)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/Imag/Interior.svg"),
                        ]),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  const Text("Interior",
                      style: TextStyle(
                          color: Color(0xFF1B1B1B),
                          fontSize: 12,
                          fontFamily: "Roboto"))
                ],
              ),

              // Container(
              //   height: MediaQuery.of(context).size.height / 8,
              //   width: MediaQuery.of(context).size.width / 5,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(15),
              //       color: Color(0xFFF1F2F3)),
              //   child: Column(
              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       children: [
              //         SvgPicture.asset("assets/Imag/Maintain.svg"),
              //         Text("Maintain",
              //             style: TextStyle(
              //                 color: Color(0xFF1B1B1B),
              //                 fontSize: 12,
              //                 fontFamily: "Roboto"))
              //       ]),
              // ),
              // Container(
              //   height: MediaQuery.of(context).size.height / 8,
              //   width: MediaQuery.of(context).size.width / 5,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(15),
              //       color: Color(0xFFF1F2F3)),
              //   child: Column(
              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       children: [
              //         SvgPicture.asset("assets/Imag/E.svg"),
              //         Text("Auto parts",
              //             style: TextStyle(
              //                 color: Color(0xFF1B1B1B),
              //                 fontSize: 12,
              //                 fontFamily: "Roboto"))
              //       ]),
              // ),
              // Container(
              //   height: MediaQuery.of(context).size.height / 8,
              //   width: MediaQuery.of(context).size.width / 5,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(15),
              //       color: Color(0xFFF1F2F3)),
              //   child: Column(
              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       children: [
              //         SvgPicture.asset("assets/Imag/Drivingskills.svg"),
              //         Text("Driving skills",
              //             style: TextStyle(
              //                 color: Color(0xFF1B1B1B),
              //                 fontSize: 12,
              //                 fontFamily: "Roboto"))
              //       ]),
              // )
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 50,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("For you",
                  style: TextStyle(
                      color: Color(0xFF1B1B1B),
                      fontSize: 20,
                      fontFamily: "Roboto")),
              InkWell(
                onTap: () {
                  Get.to(() => MyOrder());
                },
                child: const Row(
                  children: [
                    Text("More",
                        style: TextStyle(
                            color: Color(0xFF1DB854),
                            fontSize: 12,
                            fontFamily: "Roboto")),
                    Icon(
                      size: 15,
                      Icons.arrow_forward_ios,
                      color: Color(0xFF1DB854),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.5,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, indx) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width / 2.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xffF1F2F3)),
                  child: Stack(children: [
                    Positioned(
                        top: MediaQuery.of(context).size.width / 15,
                        left: MediaQuery.of(context).size.width / 17,
                        child: Image.asset("assets/Imag/ll.png")),
                    Positioned(
                        top: MediaQuery.of(context).size.height / 40,
                        right: MediaQuery.of(context).size.width / 20,
                        child: InkWell(
                          child: SvgPicture.asset("assets/Imag/like.svg"),
                          onTap: () {},
                        )),
                    Positioned(
                        bottom: MediaQuery.of(context).size.height / 10,
                        left: MediaQuery.of(context).size.width / 20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Sunpie 7 Headlight",
                                style: TextStyle(
                                    color: Color(0xFF1B1B1B),
                                    fontSize: 14,
                                    fontFamily: "Roboto")),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 50,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 4,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: const Text(
                                        "This product is the universal fit.",
                                        style: TextStyle(
                                            color: Color(0xFF8E8E93),
                                            fontSize: 10,
                                            fontFamily: "Roboto")),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                    Positioned(
                      top: MediaQuery.of(context).size.height / 3.4,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("\$10",
                                style: TextStyle(
                                    color: Color(0xFF1DB854),
                                    fontSize: 12,
                                    fontFamily: "Roboto")),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                            ),
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.white,
                              child: IconButton(
                                icon: Icon(size: 15, Icons.add),
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
                );
              }),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Popular",
                  style: TextStyle(
                      color: Color(0xFF1B1B1B),
                      fontSize: 20,
                      fontFamily: "Roboto")),
              InkWell(
                onTap: () {
                  Get.to(() => MyOrder());
                },
                child: const Row(
                  children: [
                    Text("More",
                        style: TextStyle(
                            color: Color(0xFF1DB854),
                            fontSize: 12,
                            fontFamily: "Roboto")),
                    Icon(
                      size: 15,
                      Icons.arrow_forward_ios,
                      color: Color(0xFF1DB854),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height / 7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFF1F2F3)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 50,
                      ),
                      Image.asset("assets/Imag/Acura CDX.png"),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Orion Motor Wheel Spacers",
                              style: TextStyle(
                                  color: Color(0xFF1B1B1B),
                                  fontSize: 14,
                                  fontFamily: "Roboto")),
                          Text("lightweight compared to steel spacer",
                              style: TextStyle(
                                  color: Color(0xFF8E8E93),
                                  fontSize: 10,
                                  fontFamily: "Roboto")),
                          Text("\$200",
                              style: TextStyle(
                                  color: Color(0xFF1DB854),
                                  fontSize: 14,
                                  fontFamily: "Roboto"))
                        ],
                      )
                    ],
                  ),
                );
              }),
        )
      ]),
    );
  }
}
