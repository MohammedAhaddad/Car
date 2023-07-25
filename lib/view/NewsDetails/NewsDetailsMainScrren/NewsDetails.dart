import 'package:car/view/NewsDetails/ReviewDetails/Review.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class NewsDetails extends StatelessWidget {
  const NewsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFF8E8E93),
          ),
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          Row(
            children: [
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: Text("News",
                      style: TextStyle(
                          color: Color(0xFF1B1B1B),
                          fontSize: 14,
                          fontFamily: "Roboto"))),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/Imag/share.svg",
                  ))
            ],
          )
        ],
      ),
      body: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(10),
          children: [
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Text(
                        "Porsche's First Electric Car Named Taycan; Will Rival Tesla Model S ",
                        style: TextStyle(
                            color: Color(0xFF1B1B1B),
                            fontSize: 20,
                            fontFamily: "Roboto"))),
              ],
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 15,
                ),
                Text("NewsDetails",
                    style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 20,
                        fontFamily: "Roboto-Light"))
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(children: [
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
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 4.5),
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
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                            "Porsche has announced the name of its Tesla Model S rival, the production-spec Mission E concept. Called the Taycan, the electric sedan is all set to get into production by next year, ahead of its international debut in 2020. The Taycan will be the first electric car by Porsche and it will continue to be a performance-oriented sportscar staying true to the Porsche tradition.",
                            style: TextStyle(
                                color: Color(0xFF8E8E93),
                                fontSize: 12,
                                fontWeight: FontWeight.w100,
                                fontFamily: "Roboto")))
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 18,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3.7,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Image.asset(
                    fit: BoxFit.fill,
                    "assets/Imag/proportion169.png",
                  ),
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
                        width: MediaQuery.of(context).size.width / 1.11,
                        height: MediaQuery.of(context).size.height / 9,
                        decoration: BoxDecoration(
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
                                    Text("  Acura CDX",
                                        style: TextStyle(
                                            color: Color(0xFF1B1B1B),
                                            fontSize: 14,
                                            fontFamily: "Roboto")),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              50,
                                    ),
                                    Text("  Honda/Hatchback/\$26,670",
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
                                Text("4532",
                                    style: TextStyle(
                                        color: Color(0xFF1DB854),
                                        fontSize: 14,
                                        fontFamily: "Roboto")),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 50,
                                ),
                                Text("\$634,800",
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
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                            "Porsche says that the name Taycan roughly translates to “lively young horse”, paying homage to the leaping horse that has been featured on the brand’s crest logo since 1952.12",
                            style: TextStyle(
                                color: Color(0xFF8E8E93),
                                fontSize: 12,
                                fontFamily: "Roboto")))
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFF1F2F3),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Rate this news",
                              style: TextStyle(
                                  color: Color(0xFF1B1B1B),
                                  fontSize: 10,
                                  fontFamily: "Roboto")),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset("assets/Imag/star.svg"),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 300,
                              ),
                              SvgPicture.asset("assets/Imag/star.svg"),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 300,
                              ),
                              SvgPicture.asset("assets/Imag/star.svg"),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 300,
                              ),
                              SvgPicture.asset("assets/Imag/star.svg"),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 300,
                              ),
                              SvgPicture.asset("assets/Imag/star.svg")
                            ],
                          )
                        ],
                      ),
                    )
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
                      height: MediaQuery.of(context).size.height,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                          MediaQuery.of(context).size.height /
                                              10,
                                      width:
                                          MediaQuery.of(context).size.height /
                                              8,
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
            ),
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
                  Get.to(() => Review());
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
