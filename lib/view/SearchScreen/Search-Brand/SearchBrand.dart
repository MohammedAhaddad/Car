import 'package:car/view/SearchScreen/Search-Brand/Pages/Luxury.dart';
import 'package:car/view/SearchScreen/Search-Brand/Pages/SUV.dart';
import 'package:car/view/SearchScreen/Search-Brand/Pages/Sedan.dart';
import 'package:car/view/SearchScreen/Search-Brand/Pages/hot.dart';
import 'package:car/view/SearchScreen/Search-Model/SearchModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SearchBrand extends StatelessWidget {
  const SearchBrand({Key? key}) : super(key: key);

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
                  placeholder: "Mazda",
                  backgroundColor: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ],
          )
        ],
      ),
      body: ListView(children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height / 10,
                          width: MediaQuery.of(context).size.width / 5,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xFFFFFFFF)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset("assets/Imag/mazda-logo.svg"),
                            ],
                          )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mazda",
                              style: TextStyle(
                                  color: Color(0xFF1B1B1B),
                                  fontSize: 20,
                                  fontFamily: "Roboto")),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 50,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Brand introduction",
                                    style: TextStyle(
                                        color: Color(0xFF8E8E93),
                                        fontSize: 12,
                                        fontFamily: "Roboto")),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 10,
                                  color: Color(0xFF8E8E93),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("16",
                          style: TextStyle(
                              color: Color(0xFF1DB854),
                              fontSize: 20,
                              fontFamily: "Roboto")),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 50,
                      ),
                      Text("Available",
                          style: TextStyle(
                              color: Color(0xFF8E8E93),
                              fontSize: 12,
                              fontFamily: "Roboto")),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Column(
          children: [
            Stack(
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
                    length: 4,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width / 1.5,
                              height: 50,
                              child: TabBar(
                                tabs: [
                                  const Tab(
                                    text: "Hot",
                                  ),
                                  const Tab(
                                    text: "Sedan",
                                  ),
                                  const Tab(
                                    text: "SUV",
                                  ),
                                  const Tab(
                                    text: "Luxury",
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
                                hot(),
                                Sedan(),
                                SUV(),
                                Luxury(),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
                Positioned(
                    top: MediaQuery.of(context).size.height / 35,
                    right: MediaQuery.of(context).size.width / 15,
                    child: InkWell(
                      onTap: () {
                        Get.to(() => SearchModel());
                      },
                      child: Row(
                        children: [
                          Text(
                            "All",
                            style: TextStyle(
                                color: Color(0xFF1DB854),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Roboto"),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF1DB854),
                            size: 12,
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
