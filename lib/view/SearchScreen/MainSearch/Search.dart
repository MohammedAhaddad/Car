import 'package:car/view/SearchScreen/MainSearch/Pages/Sales.dart';
import 'package:car/view/SearchScreen/MainSearch/Pages/hot.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      backgroundColor: const Color(0xffF1F2F3),
      appBar: AppBar(
        backgroundColor: const Color(0xffF1F2F3),
        elevation: 0,
        leadingWidth: 20,
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            color: Color(0xFF8E8E93),
          ),
          onPressed: () {
            Get.back();
          },
        ),
        //primary: false,
        actions: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width / 1.1,
                child: CupertinoSearchTextField(
                  backgroundColor: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ],
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("History",
                    style: TextStyle(
                        color: Color(0xFF1B1B1B),
                        fontSize: 20,
                        fontFamily: "Roboto")),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/Imag/ban.svg"),
                      const Text(" Clear History",
                          style: TextStyle(
                              color: Color(0xFF8E8E93),
                              fontSize: 12,
                              fontFamily: "Roboto")),
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.all(20),
              // width: MediaQuery.of(context).size.width / 1.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height / 18,
                      width: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("3 Series Gt",
                                style: TextStyle(
                                    color: Color(0xFF1B1B1B),
                                    fontSize: 14,
                                    fontFamily: "Roboto")),
                          ],
                        ),
                      )),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        height: MediaQuery.of(context).size.height / 18,
                        width: MediaQuery.of(context).size.width / 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Rapide E",
                                style: TextStyle(
                                    color: Color(0xFF1B1B1B),
                                    fontSize: 14,
                                    fontFamily: "Roboto")),
                          ],
                        )),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        height: MediaQuery.of(context).size.height / 18,
                        width: MediaQuery.of(context).size.width / 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("3 Series Gt",
                                style: TextStyle(
                                    color: Color(0xFF1B1B1B),
                                    fontSize: 14,
                                    fontFamily: "Roboto")),
                          ],
                        )),
                  )
                ],
              ),
            ),
            Container(
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
                          unselectedLabelStyle: const TextStyle(
                              fontSize: 12, fontFamily: "Roboto"),
                          labelStyle: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Roboto"),
                          onTap: (int selectedTabIndex) {},
                          overlayColor: MaterialStateProperty.all(
                              const Color(0xFF1DB854)),

                          labelColor: const Color(0xFF1DB854),
                          unselectedLabelColor: const Color(0xFF8E8E93),
                          indicatorColor: const Color(0xFF1DB854),
                          indicatorPadding: const EdgeInsets.all(10),
                          // indicatorPadding: EdgeInsetsDirectional.only(bottom: 35),
                          tabs: [
                            const Tab(
                              text: "Sales",
                            ),
                            const Tab(
                              text: "Hot",
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: TabBarView(
                          children: [Sales(), hotMain()],
                        ),
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
