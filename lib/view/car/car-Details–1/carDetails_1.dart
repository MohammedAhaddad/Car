import 'package:car/view/MyCostm%20widget/MyButton.dart';
import 'package:car/view/car/CompareCars/CompareCars.dart';
import 'package:car/view/car/car-Details%E2%80%931/Pages/Photos.dart';
import 'package:car/view/car/car-Details%E2%80%931/Pages/Videos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class carDetails_1 extends StatelessWidget {
  const carDetails_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F2F3),
      body: ListView(physics: BouncingScrollPhysics(), children: [
        Stack(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(40),
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width / 1.2,
              child: Image.asset(
                "assets/Imag/p718.png",
                fit: BoxFit.fill,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: DropdownButton(
                          style: const TextStyle(
                              color: Color(0xFF8E8E93), fontSize: 10),
                          iconSize: 15,
                          value: "2020 Cayman T",
                          items: [
                            '2020 Cayman T',
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
                        width: MediaQuery.of(context).size.width / 4,
                      ),
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
            Positioned(
              left: MediaQuery.of(context).size.width / 7,
              right: MediaQuery.of(context).size.width / 6,
              top: MediaQuery.of(context).size.height / 2.8,
              child: Container(
                height: MediaQuery.of(context).size.height / 35,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      radius: MediaQuery.of(context).size.width / 20,
                      splashColor: Color(0xFF00AC5E),
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: Color(0xFF00AC5E),
                        radius: MediaQuery.of(context).size.width / 35,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 35,
                    ),
                    InkWell(
                      radius: MediaQuery.of(context).size.width / 20,
                      splashColor: Color(0xFFF6C604),
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: Color(0xFFF6C604),
                        radius: MediaQuery.of(context).size.width / 35,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 35,
                    ),
                    InkWell(
                      radius: MediaQuery.of(context).size.width / 20,
                      splashColor: Color(0xFFFF3131),
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: Color(0xFFFF3131),
                        radius: MediaQuery.of(context).size.width / 35,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 35,
                    ),
                    InkWell(
                      radius: MediaQuery.of(context).size.width / 20,
                      splashColor: Color(0xFF424243),
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: Color(0xFF424243),
                        radius: MediaQuery.of(context).size.width / 35,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 35,
                    ),
                    InkWell(
                      radius: MediaQuery.of(context).size.width / 20,
                      splashColor: Color(0xFF006DEA),
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: Color(0xFF006DEA),
                        radius: MediaQuery.of(context).size.width / 35,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: DefaultTabController(
            length: 2,
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
                    height: MediaQuery.of(context).size.height / 1.1,
                    child: TabBarView(
                      children: [
                        Photos(),
                        Videos(),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(8.0),
          child: DefultBigButton(
            ontab: () {
              Get.to(() => CompareCars());
            },
            text: "Get Offers from Dealer",
            backGroundColor: Color(0xFF1DB854),
          ),
        )
      ]),
    );
  }
}
