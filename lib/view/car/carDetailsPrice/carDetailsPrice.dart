import 'package:car/MyCostm%20widget/MyButton.dart';
import 'package:car/view/car/car-Details/pages/FAQ.dart';
import 'package:car/view/car/car-Details/pages/Price.dart';
import 'package:car/view/car/car-Details/pages/Reviews.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class carDetailsPrice extends StatelessWidget {
  const carDetailsPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF1F2F3),
        appBar: AppBar(
            backgroundColor: Color(0xFFF1F2F3),
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Color(0xFFAAB6C3),
                )),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                              backgroundColor: Color(0xFFF1F2F3),
                              child: SvgPicture.asset(
                                "assets/Imag/Shar2.svg",
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ]),
        body: ListView(children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: Column(children: [
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
                            width: MediaQuery.of(context).size.width / 1.5,
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
                              unselectedLabelColor: const Color(0xFF8E8E93),
                              indicatorColor: const Color(0xFF1DB854),
                              //  indicatorPadding: const EdgeInsets.all(10),
                            )),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 1.1,
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
              )
              // Container(
              //   margin: EdgeInsets.only(top: 20),
              //   padding: EdgeInsets.all(10),
              //   decoration: BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.only(
              //           topLeft: Radius.circular(25), topRight: Radius.circular(25))),
              //   child: Column(children: [
              //     Column(
              //       children: [
              //         Column(
              //           children: [
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 Text("Cayman",
              //                     style: TextStyle(
              //                         color: Color(0xFF1B1B1B),
              //                         fontSize: 14,
              //                         fontFamily: "Roboto")),
              //                 Text("\$62,000.00",
              //                     style: TextStyle(
              //                         color: Color(0xFF1DB854),
              //                         fontSize: 14,
              //                         fontFamily: "Roboto"))
              //               ],
              //             ),
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 Text("1988 cc, Automatic,petrol,9.0 kmpl",
              //                     style: TextStyle(
              //                         color: Color(0xFF8E8E93),
              //                         fontSize: 10,
              //                         fontFamily: "Roboto")),
              //                 Row(
              //                   children: [
              //                     Text("Compare",
              //                         style: TextStyle(
              //                             color: Color(0xFF8E8E93),
              //                             fontSize: 10,
              //                             fontFamily: "Roboto")),
              //                     Checkbox(value: false, onChanged: (v) {})
              //                   ],
              //                 )
              //               ],
              //             ),
              //           ],
              //         ),
              //         Divider(
              //           color: Color(0xFFD1D1D6),
              //         ),
              //         Column(
              //           children: [
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 Text("Boxster",
              //                     style: TextStyle(
              //                         color: Color(0xFF1B1B1B),
              //                         fontSize: 14,
              //                         fontFamily: "Roboto")),
              //                 Text("\$62,000.00",
              //                     style: TextStyle(
              //                         color: Color(0xFF1DB854),
              //                         fontSize: 14,
              //                         fontFamily: "Roboto"))
              //               ],
              //             ),
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 Text("1988 cc, Automatic,petrol,9.0 kmpl",
              //                     style: TextStyle(
              //                         color: Color(0xFF8E8E93),
              //                         fontSize: 10,
              //                         fontFamily: "Roboto")),
              //                 Row(
              //                   children: [
              //                     Text("Compare",
              //                         style: TextStyle(
              //                             color: Color(0xFF8E8E93),
              //                             fontSize: 10,
              //                             fontFamily: "Roboto")),
              //                     Checkbox(value: false, onChanged: (v) {})
              //                   ],
              //                 )
              //               ],
              //             ),
              //           ],
              //         ),
              //         Divider(
              //           color: Color(0xFFD1D1D6),
              //         ),
              //         Column(
              //           children: [
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 Text("Spyder",
              //                     style: TextStyle(
              //                         color: Color(0xFF1B1B1B),
              //                         fontSize: 14,
              //                         fontFamily: "Roboto")),
              //                 Text("\$70,000.00",
              //                     style: TextStyle(
              //                         color: Color(0xFF1DB854),
              //                         fontSize: 14,
              //                         fontFamily: "Roboto"))
              //               ],
              //             ),
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 Text("3995 cc, Automatic,petrol,9.0 kmpl",
              //                     style: TextStyle(
              //                         color: Color(0xFF8E8E93),
              //                         fontSize: 10,
              //                         fontFamily: "Roboto")),
              //                 Row(
              //                   children: [
              //                     Text("Compare",
              //                         style: TextStyle(
              //                             color: Color(0xFF8E8E93),
              //                             fontSize: 10,
              //                             fontFamily: "Roboto")),
              //                     Checkbox(value: false, onChanged: (v) {})
              //                   ],
              //                 )
              //               ],
              //             ),
              //           ],
              //         ),
              //         Divider(
              //           color: Color(0xFFD1D1D6),
              //         ),
              //         Column(
              //           children: [
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 Text("Cayman GT4",
              //                     style: TextStyle(
              //                         color: Color(0xFF1B1B1B),
              //                         fontSize: 14,
              //                         fontFamily: "Roboto")),
              //                 Text("\$72,000.00",
              //                     style: TextStyle(
              //                         color: Color(0xFF1DB854),
              //                         fontSize: 14,
              //                         fontFamily: "Roboto"))
              //               ],
              //             ),
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 Text("3995 cc, Automatic,petrol,9.17 kmpl",
              //                     style: TextStyle(
              //                         color: Color(0xFF8E8E93),
              //                         fontSize: 10,
              //                         fontFamily: "Roboto")),
              //                 Row(
              //                   children: [
              //                     Text("Compare",
              //                         style: TextStyle(
              //                             color: Color(0xFF8E8E93),
              //                             fontSize: 10,
              //                             fontFamily: "Roboto")),
              //                     Checkbox(value: false, onChanged: (v) {})
              //                   ],
              //                 )
              //               ],
              //             ),
              //           ],
              //         ),
              //         Divider(
              //           color: Color(0xFFD1D1D6),
              //         ),
              //       ],
              //     ),
              //     SizedBox(
              //       height: MediaQuery.of(context).size.height / 30,
              //     ),
              //     Row(
              //       children: [
              //         Text("Recommend for you",
              //             style: TextStyle(
              //                 fontSize: 14,
              //                 color: Color(0xFF8E8E93),
              //                 fontFamily: "Roboto"))
              //       ],
              //     ),
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Container(
              //           child: Column(
              //             children: [
              //               Image.asset(
              //                 "assets/Imag/Rectangle 517.png",
              //               ),
              //               Text("BMW 6 Series GT",
              //                   style: TextStyle(
              //                       fontSize: 10,
              //                       color: Color(0xFF1B1B1B),
              //                       fontFamily: "Roboto"))
              //             ],
              //           ),
              //         ),
              //         Container(
              //           child: Column(
              //             children: [
              //               Image.asset(
              //                 "assets/Imag/Continental.png",
              //               ),
              //               Text("Continental",
              //                   style: TextStyle(
              //                       fontSize: 10,
              //                       color: Color(0xFF1B1B1B),
              //                       fontFamily: "Roboto"))
              //             ],
              //           ),
              //         ),
              //         Container(
              //           child: Column(
              //             children: [
              //               Image.asset(
              //                 "assets/Imag/mm.png",
              //               ),
              //               Text("Mercedes SLC",
              //                   style: TextStyle(
              //                       fontSize: 10,
              //                       color: Color(0xFF1B1B1B),
              //                       fontFamily: "Roboto"))
              //             ],
              //           ),
              //         )
              //       ],
              //     ),
              //     SizedBox(
              //       height: MediaQuery.of(context).size.height / 50,
              //     ),
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Container(
              //           child: Column(
              //             children: [
              //               Image.asset(
              //                 "assets/Imag/Acura NSX.png",
              //               ),
              //               Text("Acura NSX",
              //                   style: TextStyle(
              //                       fontSize: 10,
              //                       color: Color(0xFF1B1B1B),
              //                       fontFamily: "Roboto"))
              //             ],
              //           ),
              //         ),
              //         Container(
              //           child: Column(
              //             children: [
              //               Image.asset(
              //                 "assets/Imag/Polestar 1.png",
              //               ),
              //               Text("Polestar 1",
              //                   style: TextStyle(
              //                       fontSize: 10,
              //                       color: Color(0xFF1B1B1B),
              //                       fontFamily: "Roboto"))
              //             ],
              //           ),
              //         ),
              //         Container(
              //           child: Column(
              //             children: [
              //               SvgPicture.asset(
              //                 "assets/Imag/Lexus.svg",
              //               ),
              //               Text("Mercedes SLC",
              //                   style: TextStyle(
              //                       fontSize: 10,
              //                       color: Color(0xFF1B1B1B),
              //                       fontFamily: "Roboto"))
              //             ],
              //           ),
              //         )
              //       ],
              //     ),
              //     SizedBox(
              //       height: MediaQuery.of(context).size.height / 30,
              //     ),
              //     DefultBigButton(
              //       text: "Get Offers from Dealer",
              //       ontab: () {
              //         Get.to(() => carDetailsPrice());
              //       },
              //       backGroundColor: Color(0xFF1DB854),
              //     )
              //   ]),
              // )
            ]),
          )
        ]));
  }
}
