import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../SearchScreen/MainSearch/Search.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  String selectedOption = 'Bangkok';

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
      body: ListView(
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
                        items: [
                          Container(
                            padding: const EdgeInsets.all(21),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15)),
                            child: Stack(children: [
                              Image.asset("assets/Imag/proportion21.png"),
                              Positioned(
                                left: 10,
                                top: MediaQuery.of(context).size.height / 8,
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Extreme bump test",
                                        style: TextStyle(
                                            color: Color(0xFFA4AEAE),
                                            fontSize: 12,
                                            fontFamily: "Roboto")),
                                    Text(
                                        "First test! 100km/h extreme bump test",
                                        style: TextStyle(
                                            color: Color(0xFFFFFFFF),
                                            fontSize: 14,
                                            fontFamily: "Roboto"))
                                  ],
                                ),
                              )
                            ]),
                          )
                        ]),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 20,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xFFFFFFFF)),
                            width: MediaQuery.of(context).size.width / 5,
                            height: MediaQuery.of(context).size.height / 15,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset("assets/Imag/1.png"),
                                const Text("Giulia",
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
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Top deal",
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
                    itemCount: 10,
                    itemBuilder: (context, indx) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xFFFFFFFF)),
                        child: Stack(children: [
                          Positioned(
                              top: MediaQuery.of(context).size.width / 15,
                              left: MediaQuery.of(context).size.width / 17,
                              child: Image.asset("assets/Imag/car-pic.png")),
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
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Lamborghini",
                                      style: TextStyle(
                                          color: Color(0xFF1B1B1B),
                                          fontSize: 14,
                                          fontFamily: "Roboto")),
                                  Text("\$67,600",
                                      style: TextStyle(
                                          color: Color(0xFF1DB854),
                                          fontSize: 12,
                                          fontFamily: "Roboto")),
                                ],
                              )),
                          Positioned(
                              left: 10,
                              bottom: MediaQuery.of(context).size.height / 30,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                              color: const Color(0xFFD1D1D6),
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
                                              color: const Color(0xFFD1D1D6),
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
                                              color: const Color(0xFFD1D1D6),
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
                                    width:
                                        MediaQuery.of(context).size.width / 9,
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
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                          width: MediaQuery.of(context).size.width / 3,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xFFFFFFFF)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset("assets/Imag/w.svg"),
                              const Text("Toyota",
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
                    itemCount: 10,
                    itemBuilder: (context, indx) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xFFFFFFFF)),
                        child: Stack(children: [
                          Positioned(
                              top: MediaQuery.of(context).size.width / 15,
                              left: MediaQuery.of(context).size.width / 17,
                              child: Image.asset("assets/Imag/car.png")),
                          Positioned(
                              top: MediaQuery.of(context).size.height / 40,
                              right: MediaQuery.of(context).size.width / 20,
                              child: InkWell(
                                child: SvgPicture.asset("assets/Imag/like.svg"),
                                onTap: () {},
                              )),
                          Positioned(
                              bottom: MediaQuery.of(context).size.height / 12,
                              left: MediaQuery.of(context).size.width / 20,
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Mazda Enclave",
                                      style: TextStyle(
                                          color: Color(0xFF1B1B1B),
                                          fontSize: 14,
                                          fontFamily: "Roboto")),
                                  Text("\$42,70-\$48,70",
                                      style: TextStyle(
                                          color: Color(0xFF1DB854),
                                          fontSize: 12,
                                          fontFamily: "Roboto")),
                                ],
                              )),
                          Positioned(
                              left: MediaQuery.of(context).size.width / 20,
                              bottom: MediaQuery.of(context).size.height / 30,
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
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
              Container(
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
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
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
                              const Expanded(
                                child: Text(
                                    "Porsche Type 997 911 GT2 RSR Flat Out At Monza",
                                    style: TextStyle(
                                        color: Color(0xFF1B1B1B),
                                        fontSize: 14,
                                        fontFamily: "Roboto")),
                              ),
                              Image.asset("assets/Imag/car.png")
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
          ),
        ],
      ),
    );
  }
}
// SizedBox(
//   width: MediaQuery.of(context).size.width / 1.2,
//   height: MediaQuery.of(context).size.height / 2,
//   child: ListView.builder(
//       scrollDirection: Axis.horizontal,
//       itemCount: 10,
//       itemBuilder: (context, index) {

//       }),
// )
// SizedBox(
//   width: MediaQuery.of(context).size.width,
//   height: MediaQuery.of(context).size.height,
//   child: ListView.builder(
//       scrollDirection: Axis.horizontal,
//       itemCount: 10,
//       itemBuilder: (context, index) {
//         return Container(
//           padding: const EdgeInsets.all(21),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15)),
//           child: Stack(children: [
//             Image.asset("assets/Imag/proportion21.png"),
//             Positioned(
//               left: 10,
//               top: MediaQuery.of(context).size.height / 5.8,
//               child: const Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("Extreme bump test",
//                       style: TextStyle(
//                           color: Color(0xFFA4AEAE),
//                           fontSize: 12,
//                           fontFamily: "Roboto")),
//                   Text("First test! 100km/h extreme bump test",
//                       style: TextStyle(
//                           color: Color(0xFFFFFFFF),
//                           fontSize: 14,
//                           fontFamily: "Roboto"))
//                 ],
//               ),
//             )

//           ]),
//         );
//       }),
// )
