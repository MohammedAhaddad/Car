import 'package:car/view/SearchScreen/BrandPorsche/Pages/All.dart';
import 'package:car/view/SearchScreen/BrandPorsche/Pages/Luxury2.dart';
import 'package:car/view/SearchScreen/BrandPorsche/Pages/SUV2.dart';
import 'package:car/view/SearchScreen/BrandPorsche/Pages/Sedan2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BrandPorsche extends StatelessWidget {
  const BrandPorsche({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F2F3),
      appBar: AppBar(
        backgroundColor: Color(0xFFF1F2F3),
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
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Text("Brands",
                      style: TextStyle(
                          color: Color(0xFF1B1B1B),
                          fontSize: 14,
                          fontFamily: "Roboto"))),
            ],
          )
        ],
      ),
      body: ListView(physics: BouncingScrollPhysics(), children: [
        Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                const Text("Hot",
                    style: TextStyle(
                        color: Color(0xFF1B1B1B),
                        fontSize: 20,
                        fontFamily: "Roboto")),
              ],
            )),
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
                      color: Color(0xffFFFFFF)),
                  child: Stack(children: [
                    Positioned(
                        top: MediaQuery.of(context).size.width / 15,
                        left: MediaQuery.of(context).size.width / 17,
                        child: Image.asset("assets/Imag/car-picMazda.png")),
                    Positioned(
                        top: MediaQuery.of(context).size.height / 40,
                        right: MediaQuery.of(context).size.width / 20,
                        child: InkWell(
                          child: SvgPicture.asset("assets/Imag/like.svg"),
                          onTap: () {},
                        )),
                    Positioned(
                        bottom: MediaQuery.of(context).size.height / 17,
                        left: MediaQuery.of(context).size.width / 20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Mazda Atenza",
                                style: TextStyle(
                                    color: Color(0xFF1B1B1B),
                                    fontSize: 14,
                                    fontFamily: "Roboto")),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 50,
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
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
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
                        unselectedLabelStyle:
                            const TextStyle(fontSize: 12, fontFamily: "Roboto"),
                        labelStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Roboto"),
                        onTap: (int selectedTabIndex) {},
                        overlayColor:
                            MaterialStateProperty.all(const Color(0xFF1DB854)),
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
                        All(),
                        Sedan2(),
                        SUV2(),
                        Luxury2(),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ]),
    );
  }
}
