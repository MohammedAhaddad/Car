import 'dart:ffi';

import 'package:car/controler/MainScreenControler/MainScreenControler.dart';
import 'package:car/view/MainPages/home/slider.dart';
import 'package:car/view/NewsDetails/NewsDetailsMainScrren/NewsDetails.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../SearchScreen/MainSearch/Search.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  String selectedOption = 'Bangkok';
  int index = 1;
  Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F2F3),
      appBar: AppBar(
        backgroundColor: const Color(0xffF1F2F3),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  child: DropdownButton(
                    style:
                        const TextStyle(color: Color(0xFF8E8E93), fontSize: 15),
                    iconSize: 20,
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
                SizedBox(
                  width: MediaQuery.of(context).size.width / 12,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: CupertinoSearchTextField(
                    onTap: () {
                      Get.to(() => Search());
                    },
                    backgroundColor: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 30,
                ),
                Stack(
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
              ],
            ),
          )
        ],
      ),
      body: GetBuilder<MainScreenControler>(
          init: MainScreenControler(),
          builder: (controler) {
            return ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: CarouselSlider(
                            options: CarouselOptions(
                              autoPlay: false,
                              enlargeCenterPage: false,
                            ),
                            items: controler.Slaider.map((e) => sliderwedget(
                                  imag: e.image ?? "",
                                  title: e.title ?? "",
                                )).toList(),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 20,
                          child: ListView.builder(
                              itemCount: controler.brand.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: const EdgeInsets.only(left: 20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color(0xFFFFFFFF)),
                                  width: MediaQuery.of(context).size.width / 4,
                                  height:
                                      MediaQuery.of(context).size.height / 15,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.network(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              20,
                                          controler.brand[index].logo ?? ""),
                                      Text(controler.brand[index].name ?? "",
                                          style: TextStyle(
                                              color: Color(0xFF1B1B1B),
                                              fontSize: 14,
                                              fontFamily: "Roboto"))
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Top deal",
                              style: TextStyle(
                                  color: Color(0xFF1B1B1B),
                                  fontSize: 20,
                                  fontFamily: "Roboto")),
                          InkWell(
                            onTap: () {},
                            child: Row(
                              children: [
                                Text("More",
                                    style: TextStyle(
                                        color: Color(0xFF1DB854),
                                        fontSize: 12,
                                        fontFamily: "Roboto")),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xFF1DB854),
                                  size: 10,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 3,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controler.car.length,
                          itemBuilder: (context, indx) {
                            return Container(
                              margin: const EdgeInsets.all(10),
                              width: MediaQuery.of(context).size.width / 2.5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xFFFFFFFF)),
                              child: Stack(children: [
                                Positioned(
                                    bottom:
                                        MediaQuery.of(context).size.height / 8,
                                    top: MediaQuery.of(context).size.height /
                                        150,
                                    left:
                                        MediaQuery.of(context).size.width / 50,
                                    child: Container(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              3,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  controler.car[indx].image ??
                                                      ""))),
                                    )),
                                Positioned(
                                    top:
                                        MediaQuery.of(context).size.height / 60,
                                    right:
                                        MediaQuery.of(context).size.width / 20,
                                    child: InkWell(
                                      child: SvgPicture.asset(
                                          "assets/Imag/like.svg"),
                                      onTap: () {},
                                    )),
                                Positioned(
                                    bottom:
                                        MediaQuery.of(context).size.height / 15,
                                    left:
                                        MediaQuery.of(context).size.width / 20,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                    controler.car[indx].name ??
                                                        "",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF1B1B1B),
                                                        fontSize: 14,
                                                        fontFamily: "Roboto")),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text("\$${controler.car[indx].price}",
                                            style: TextStyle(
                                                color: Color(0xFF1DB854),
                                                fontSize: 12,
                                                fontFamily: "Roboto")),
                                      ],
                                    )),
                                Positioned(
                                    left: 10,
                                    bottom:
                                        MediaQuery.of(context).size.height / 30,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            InkWell(
                                              child: CircleAvatar(
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  border: Border.all(
                                                    color:
                                                        const Color(0xFFD1D1D6),
                                                    width: 1.0,
                                                  ),
                                                )),
                                                backgroundColor: Colors.white,
                                                radius: 7,
                                              ),
                                              onTap: () {},
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            InkWell(
                                              child: CircleAvatar(
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  border: Border.all(
                                                    color:
                                                        const Color(0xFFD1D1D6),
                                                    width: 1.0,
                                                  ),
                                                )),
                                                backgroundColor:
                                                    const Color(0xFF005EA2),
                                                radius: 7,
                                              ),
                                              onTap: () {},
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            InkWell(
                                              child: CircleAvatar(
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  border: Border.all(
                                                    color:
                                                        const Color(0xFFD1D1D6),
                                                    width: 1.0,
                                                  ),
                                                )),
                                                backgroundColor:
                                                    const Color(0xFFFBEC1A),
                                                radius: 7,
                                              ),
                                              onTap: () {},
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              9,
                                        ),
                                        InkWell(
                                          child: SvgPicture.asset(
                                              "assets/Imag/Viewdetails.svg"),
                                        )
                                      ],
                                    ))
                              ]),
                            );
                          }),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Popular brands",
                              style: TextStyle(
                                  color: Color(0xFF1B1B1B),
                                  fontSize: 20,
                                  fontFamily: "Roboto")),
                          Row(
                            children: [
                              Text("More",
                                  style: TextStyle(
                                      color: Color(0xFF1DB854),
                                      fontSize: 12,
                                      fontFamily: "Roboto")),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF1DB854),
                                size: 10,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 5,
                      child: ListView.builder(
                          itemCount: controler.brand.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                                width: MediaQuery.of(context).size.width / 3,
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color(0xFFFFFFFF)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width / 5,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              8,
                                      child: Image.network(
                                          controler.brand[index].logo ?? ""),
                                    ),
                                    Text(controler.brand[index].name ?? "",
                                        style: TextStyle(
                                            color: Color(0xFF8E8E93),
                                            fontSize: 12,
                                            fontFamily: "Roboto"))
                                  ],
                                ));
                          }),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Upcoming",
                              style: TextStyle(
                                  color: Color(0xFF1B1B1B),
                                  fontSize: 20,
                                  fontFamily: "Roboto")),
                          Row(
                            children: [
                              Text("More",
                                  style: TextStyle(
                                      color: Color(0xFF1DB854),
                                      fontSize: 12,
                                      fontFamily: "Roboto")),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF1DB854),
                                size: 10,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 3,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controler.car.length,
                          itemBuilder: (context, indx) {
                            return Container(
                              margin: const EdgeInsets.all(10),
                              width: MediaQuery.of(context).size.width / 2.5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xFFFFFFFF)),
                              child: Stack(children: [
                                Positioned(
                                    bottom:
                                        MediaQuery.of(context).size.height / 8,
                                    top: MediaQuery.of(context).size.height /
                                        150,
                                    left:
                                        MediaQuery.of(context).size.width / 50,
                                    child: Container(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              3,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  controler.car[indx].image ??
                                                      ""))),
                                    )),
                                Positioned(
                                    top:
                                        MediaQuery.of(context).size.height / 40,
                                    right:
                                        MediaQuery.of(context).size.width / 20,
                                    child: InkWell(
                                      child: SvgPicture.asset(
                                          "assets/Imag/like.svg"),
                                      onTap: () {},
                                    )),
                                Positioned(
                                    bottom:
                                        MediaQuery.of(context).size.height / 15,
                                    left:
                                        MediaQuery.of(context).size.width / 20,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                    controler.car[indx].name ??
                                                        "",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF1B1B1B),
                                                        fontSize: 14,
                                                        fontFamily: "Roboto")),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                            "\$${controler.car[indx].price}-\$${controler.car[indx].price}",
                                            style: TextStyle(
                                                color: Color(0xFF1DB854),
                                                fontSize: 12,
                                                fontFamily: "Roboto")),
                                      ],
                                    )),
                                Positioned(
                                    left:
                                        MediaQuery.of(context).size.width / 20,
                                    bottom:
                                        MediaQuery.of(context).size.height / 30,
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Expected Launch-Sep 18",
                                            style: TextStyle(
                                                color: Color(0xFF8E8E93),
                                                fontSize: 10,
                                                fontFamily: "Roboto"))
                                      ],
                                    ))
                              ]),
                            );
                          }),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => const NewsDetails());
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("News",
                                style: TextStyle(
                                    color: Color(0xFF1B1B1B),
                                    fontSize: 20,
                                    fontFamily: "Roboto")),
                            Row(
                              children: [
                                Text("More",
                                    style: TextStyle(
                                        color: Color(0xFF1DB854),
                                        fontSize: 12,
                                        fontFamily: "Roboto")),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xFF1DB854),
                                  size: 10,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: controler.car.length,
                      itemBuilder: (context, indx) {
                        return Container(
                          padding: const EdgeInsets.all(15),
                          margin: const EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width / 2.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xFFFFFFFF)),
                          child: Column(children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                      controler.car[indx].name ??
                                          "Porsche Type 997 911 GT2 RSR Flat Out At Monza",
                                      style: TextStyle(
                                          color: Color(0xFF1B1B1B),
                                          fontSize: 14,
                                          fontFamily: "Roboto")),
                                ),
                                SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 5,
                                    height:
                                        MediaQuery.of(context).size.height / 10,
                                    child: Image.network(
                                        controler.car[indx].image ?? ""))
                              ],
                            ),
                            const Row(
                              children: [
                                Expanded(
                                  child: Text("By Akshit  Sep 05,2020",
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
            );
          }),
    );
  }
}
