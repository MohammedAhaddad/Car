import 'package:car/view/NewsDetails/ReviewDetails/Pages/Hot.dart';
import 'package:car/view/NewsDetails/ReviewDetails/Pages/Latest.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F2F3),
      appBar: AppBar(
        backgroundColor: Color(0xFFF1F2F3),
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
                  icon: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: SvgPicture.asset(
                      "assets/Imag/Shar2.svg",
                    ),
                  ))
            ],
          )
        ],
      ),
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
                onTap: () {},
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
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
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
                        width: MediaQuery.of(context).size.width / 5.5,
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
              ],
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 25),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            height: MediaQuery.of(context).size.height,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: DefaultTabController(
                length: 2,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width / 2,
                          height: 50,
                          child: TabBar(
                            tabs: [
                              const Tab(
                                text: "Hot",
                              ),
                              const Tab(
                                text: "Latest",
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
                        height: MediaQuery.of(context).size.height / 1.2,
                        child: TabBarView(
                          children: [
                            Hot(),
                            Latest(),
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
