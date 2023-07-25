import 'package:car/view/NewsDetails/NewsDetailsMainScrren/NewsDetails.dart';
import 'package:car/view/SearchScreen/Brand/Brand.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SearchModel extends StatelessWidget {
  const SearchModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F2F3),
      appBar: AppBar(
        backgroundColor: const Color(0xffF1F2F3),
        elevation: 0,
        leadingWidth: 20,
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
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width / 1.1,
                child: CupertinoSearchTextField(
                  placeholder: "Lexus LC",
                  backgroundColor: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ],
          )
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Get.to(() => Brand());
                },
                child: Row(
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height / 8,
                        width: MediaQuery.of(context).size.width / 4,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xFFFFFFFF)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset("assets/Imag/Lexus.svg"),
                          ],
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Lexus LC",
                            style: TextStyle(
                                color: Color(0xFF1B1B1B),
                                fontSize: 20,
                                fontFamily: "Roboto")),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 70,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Lexus/Luxury/The 2.3L EcoBoost",
                                style: TextStyle(
                                    color: Color(0xFF8E8E93),
                                    fontSize: 12,
                                    fontFamily: "Roboto")),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 70,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("\$456,800-\$486,800",
                                style: TextStyle(
                                    color: Color(0xFF1DB854),
                                    fontSize: 12,
                                    fontFamily: "Roboto")),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Row(
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 10,
                    color: Color(0xFF8E8E93),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              )
            ],
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 20),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned(
                  top: MediaQuery.of(context).size.height / 15,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: MediaQuery.of(context).size.height / 10,
                    ),
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Lexus LC price list",
                                style: TextStyle(
                                    color: Color(0xFF1B1B1B),
                                    fontSize: 20,
                                    fontFamily: "Roboto")),
                            Row(
                              children: [
                                Text("All",
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
                        Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 40,
                            ),
                            const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("500h Luxury",
                                      style: TextStyle(
                                          color: Color(0xFF1B1B1B),
                                          fontSize: 14,
                                          fontFamily: "Roboto")),
                                  Text("\$456,800",
                                      style: TextStyle(
                                          color: Color(0xFF1DB854),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Roboto"))
                                ]),
                            const Row(
                              children: [
                                Text("3456 cc,Automatic,Petrol,15.4kmpl",
                                    style: TextStyle(
                                        color: Color(0xFF8E8E93),
                                        fontSize: 14,
                                        fontFamily: "Roboto"))
                              ],
                            ),
                            Divider(
                              color: const Color(0xFFD1D1D6),
                              height: MediaQuery.of(context).size.height / 15,
                            ),

                            ///////////////////////////////////////////////////////
                            ///
                            const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("500h Ultra Luxury",
                                      style: TextStyle(
                                          color: Color(0xFF1B1B1B),
                                          fontSize: 14,
                                          fontFamily: "Roboto")),
                                  Text("\$456,800",
                                      style: TextStyle(
                                          color: Color(0xFF1DB854),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Roboto"))
                                ]),
                            const Row(
                              children: [
                                Text("3456 cc,Automatic,Petrol,15.4kmpl",
                                    style: TextStyle(
                                        color: Color(0xFF8E8E93),
                                        fontSize: 14,
                                        fontFamily: "Roboto"))
                              ],
                            ),
                            Divider(
                              color: const Color(0xFFD1D1D6),
                              height: MediaQuery.of(context).size.height / 15,
                            ),
                            //////////////////////////////////////////////////////////////////////
                            InkWell(
                              onTap: () {
                                Get.to(() => const NewsDetails());
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                padding: const EdgeInsets.all(10),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 2,
                              child: ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  itemCount: 2,
                                  itemBuilder: (context, indx) {
                                    return Container(
                                      padding: const EdgeInsets.all(15),
                                      margin: const EdgeInsets.all(10),
                                      width: MediaQuery.of(context).size.width /
                                          2.5,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: const Color(0xFFF1F2F3)),
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
                                              child: Text(
                                                  "By Akshit  Sep 05,2020",
                                                  style: TextStyle(
                                                      color: Color(0xFF8E8E93),
                                                      fontSize: 12,
                                                      fontFamily: "Roboto")),
                                            ),
                                          ],
                                        )
                                      ]),
                                    );
                                  }),
                            ),

                            /////////////////////////////////////////////////////////////////
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 4,
                              height: MediaQuery.of(context).size.height / 8.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/Imag/Rectangle 502.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                                top: MediaQuery.of(context).size.height / 11,
                                left: MediaQuery.of(context).size.width / 15,
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 35,
                                  width: MediaQuery.of(context).size.width / 8,
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(0, 0, 0, 0.3),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Center(
                                      child: Text("Exterior",
                                          style: TextStyle(
                                              fontSize: 8,
                                              color: Colors.white,
                                              fontFamily: "Roboto"))),
                                ))
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 4,
                              height: MediaQuery.of(context).size.height / 8.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage('assets/Imag/5.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                                top: MediaQuery.of(context).size.height / 11,
                                left: MediaQuery.of(context).size.width / 15,
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 35,
                                  width: MediaQuery.of(context).size.width / 8,
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(0, 0, 0, 0.3),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Center(
                                      child: Text("Interior",
                                          style: TextStyle(
                                              fontSize: 8,
                                              color: Colors.white,
                                              fontFamily: "Roboto"))),
                                ))
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 4,
                              height: MediaQuery.of(context).size.height / 8.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage('assets/Imag/CarImag.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                                top: MediaQuery.of(context).size.height / 11,
                                left: MediaQuery.of(context).size.width / 30,
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 35,
                                  width:
                                      MediaQuery.of(context).size.width / 5.5,
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(0, 0, 0, 0.3),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Center(
                                      child: Text("Video description",
                                          style: TextStyle(
                                              fontSize: 8,
                                              color: Colors.white,
                                              fontFamily: "Roboto"))),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height / 1.2,
            color: Colors.white,
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Videos",
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
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 3.8,
                      child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, indx) {
                            return Container(
                              margin: const EdgeInsets.all(10),
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width / 2.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: InkWell(
                                onTap: () {},
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                50,
                                      ),
                                      Image.asset("assets/Imag/3：2.png"),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                50,
                                      ),
                                      Text("Mazda 6-test 01",
                                          style: TextStyle(
                                              color: Color(0xFF1B1B1B),
                                              fontSize: 14,
                                              fontFamily: "Roboto"))
                                    ]),
                              ),
                            );
                          }),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Similar cars",
                            style: TextStyle(
                                color: Color(0xFF1B1B1B),
                                fontSize: 20,
                                fontFamily: "Roboto")),
                      ],
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
                                  color: Color(0xffF1F2F3)),
                              child: Stack(children: [
                                Positioned(
                                    top: MediaQuery.of(context).size.width / 15,
                                    left:
                                        MediaQuery.of(context).size.width / 17,
                                    child: Image.asset(
                                        "assets/Imag/car-picMazda.png")),
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
                                        MediaQuery.of(context).size.height / 17,
                                    left:
                                        MediaQuery.of(context).size.width / 20,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Mazda Atenza",
                                            style: TextStyle(
                                                color: Color(0xFF1B1B1B),
                                                fontSize: 14,
                                                fontFamily: "Roboto")),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              50,
                                        ),
                                        Text("\$330,000",
                                            style: TextStyle(
                                                color: Color(0xFF1DB854),
                                                fontSize: 12,
                                                fontFamily: "Roboto")),
                                      ],
                                    )),
                              ]),
                            );
                          }),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
