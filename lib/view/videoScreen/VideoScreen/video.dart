import 'dart:developer';

import 'package:car/view/videoScreen/TheVideo.dart';
import 'package:car/view/videoScreen/video%20Review/videoReview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class video extends StatelessWidget {
  // final String videoId = 'OtXCGqlzrpM';

  late YoutubePlayerController _youtubePlayerController;
  String videoId = YoutubePlayer.convertUrlToId(
          "https://www.youtube.com/watch?v=OtXCGqlzrpM") ??
      "";

  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      _youtubePlayerController = YoutubePlayerController(
          initialVideoId: videoId!, flags: YoutubePlayerFlags(autoPlay: false));
    }

    return Scaffold(
      body: ListView(children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              child: YoutubePlayer(
                controller: YoutubePlayerController(
                    initialVideoId: videoId!,
                    flags: YoutubePlayerFlags(autoPlay: false)),
                showVideoProgressIndicator: true,
                onReady: () {
                  log("Ready");
                },
                bottomActions: [
                  CurrentPosition(),
                  ProgressBar(
                    isExpanded: true,
                  )
                ],
                progressIndicatorColor: Colors.blueAccent,
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
                  IconButton(
                      onPressed: () {},
                      icon: CircleAvatar(
                        backgroundColor: Color(0xFF000000),
                        child: SvgPicture.asset(
                          "assets/Imag/Shar2.svg",
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
        Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10),
          child: Column(children: [
            Text("2019 Macan Facelift Launched; More Affordable Than Before",
                style: TextStyle(
                    color: Color(0xFF1B1B1B),
                    fontSize: 20,
                    fontFamily: "Roboto")),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/Imag/Ellipse 60.png')),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("  Prescott",
                            style: TextStyle(
                                color: Color(0xFF1B1B1B),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Roboto")),
                        Text("  Aug 31,2020 / 89623 Views",
                            style: TextStyle(
                                color: Color(0xFF8E8E93),
                                fontSize: 12,
                                fontFamily: "Roboto"))
                      ],
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 5),
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    height: MediaQuery.of(context).size.height / 25,
                    width: MediaQuery.of(context).size.width / 6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFFFFFFFF),
                        border: Border.all(color: Color(0xFF1DB854))),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.add,
                          color: Color(0xFF1DB854),
                          size: 18,
                        ),
                        Text("Follow",
                            style: TextStyle(
                                color: Color(0xFF1DB854),
                                fontSize: 12,
                                fontFamily: "Roboto"))
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width / 1.07,
                    height: MediaQuery.of(context).size.height / 9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFF1F2F3),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/Imag/car.png",
                              //width: MediaQuery.of(context).size.width / 4,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("  Porsche-Taycan",
                                    style: TextStyle(
                                        color: Color(0xFF1B1B1B),
                                        fontSize: 14,
                                        fontFamily: "Roboto")),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 50,
                                ),
                                Text("   McLaren/Luxury",
                                    style: TextStyle(
                                        color: Color(0xFF8E8E93),
                                        fontSize: 10,
                                        fontFamily: "Roboto"))
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("\$634,800",
                                style: TextStyle(
                                    color: Color(0xFF1DB854),
                                    fontSize: 14,
                                    fontFamily: "Roboto")),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 50,
                            ),
                            Text("Price",
                                style: TextStyle(
                                    color: Color(0xFF8E8E93),
                                    fontSize: 10,
                                    fontFamily: "Roboto"))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 10),
              alignment: Alignment.centerLeft,
              child: Text("Related",
                  style: TextStyle(
                      color: Color(0xFF1B1B1B),
                      fontSize: 20,
                      fontFamily: "Roboto")),
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.11,
                  height: MediaQuery.of(context).size.height / 2,
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: 5,
                      itemBuilder: (context, indx) {
                        return Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(top: 10),
                          width: MediaQuery.of(context).size.width / 2.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xFFF1F2F3)),
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Expanded(
                                  child: Text(
                                      "2019 Macan Facelift Launched; More Affordable Than Before",
                                      style: TextStyle(
                                          color: Color(0xFF1B1B1B),
                                          fontSize: 14,
                                          fontFamily: "Roboto")),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  height:
                                      MediaQuery.of(context).size.height / 10,
                                  width: MediaQuery.of(context).size.height / 8,
                                  child: Image.asset(
                                    fit: BoxFit.fill,
                                    "assets/Imag/proportion169.png",
                                  ),
                                )
                              ],
                            ),
                            const Row(
                              children: [
                                Expanded(
                                  child: Text("By  Sonny  Jul 29,2020",
                                      style: TextStyle(
                                          color: Color(0xFF8E8E93),
                                          fontSize: 12,
                                          fontFamily: "Roboto-Light")),
                                ),
                              ],
                            )
                          ]),
                          // child: Stack(children: [
                          //   Positioned(
                          //       top: MediaQuery.of(context).size.width / 15,
                          //       left: MediaQuery.of(context).size.width / 17,
                          //       child: Image.asset("assets/Imag/car.png")),
                          //   Positioned(
                          //       top: MediaQuery.of(context).size.height / 40,
                          //       right: MediaQuery.of(context).size.width / 20,
                          //       child: InkWell(
                          //         child: SvgPicture.asset("assets/Imag/like.svg"),
                          //         onTap: () {},
                          //       )),
                          //   Positioned(
                          //       bottom: MediaQuery.of(context).size.height / 12,
                          //       left: MediaQuery.of(context).size.width / 20,
                          //       child: const Column(
                          //         crossAxisAlignment: CrossAxisAlignment.start,
                          //         children: [
                          //           Text("Mazda Enclave",
                          //               style: TextStyle(
                          //                   color: Color(0xFF1B1B1B),
                          //                   fontSize: 14,
                          //                   fontFamily: "Roboto")),
                          //           Text("\$42,70-\$48,70",
                          //               style: TextStyle(
                          //                   color: Color(0xFF1DB854),
                          //                   fontSize: 12,
                          //                   fontFamily: "Roboto")),
                          //         ],
                          //       )),
                          //   Positioned(
                          //       left: MediaQuery.of(context).size.width / 20,
                          //       bottom: MediaQuery.of(context).size.height / 30,
                          //       child: const Row(
                          //         mainAxisAlignment: MainAxisAlignment.center,
                          //         children: [
                          //           Text("Expected Launch-Sep 18",
                          //               style: TextStyle(
                          //                   color: Color(0xFF8E8E93),
                          //                   fontSize: 10,
                          //                   fontFamily: "Roboto"))
                          //         ],
                          //       ))
                          // ]),
                        );
                      }),
                ),
              ],
            )
          ]),
        )
      ]),
      bottomNavigationBar: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.only(left: 15, right: 15),
        height: MediaQuery.of(context).size.height / 8,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Color(0xFFF1F2F3),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Row(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: CupertinoSearchTextField(
                placeholder: "  Say something…",
                backgroundColor: Colors.white,
                borderRadius: BorderRadius.circular(30),
                prefixIcon: SvgPicture.asset("assets/Imag/pan.svg")),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Get.to(() => videoReview());
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/Imag/2.svg",
                      width: MediaQuery.of(context).size.width / 30,
                      height: MediaQuery.of(context).size.height / 30,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 120,
                    ),
                    Text(
                      "34",
                      style: TextStyle(
                          color: Color(0xFF1B1B1B),
                          fontSize: 8,
                          fontFamily: "Roboto"),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 25,
              ),
              InkWell(
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/Imag/Like3.svg",
                      width: MediaQuery.of(context).size.width / 30,
                      height: MediaQuery.of(context).size.height / 30,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 120,
                    ),
                    Text(
                      "64",
                      style: TextStyle(
                          color: Color(0xFF1B1B1B),
                          fontSize: 10,
                          // fontWeight: FontWeight.w500,
                          fontFamily: "Roboto"),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 25,
              ),
              InkWell(
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/Imag/star.svg",
                      width: MediaQuery.of(context).size.width / 30,
                      height: MediaQuery.of(context).size.height / 30,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 120,
                    ),
                    Text(
                      "Collect",
                      style: TextStyle(
                          color: Color(0xFF1B1B1B),
                          fontSize: 10,
                          fontFamily: "Roboto"),
                    )
                  ],
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
