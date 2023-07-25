import 'package:car/view/SearchScreen/MainSearch/Search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BuyCar extends StatelessWidget {
  const BuyCar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF1F2F3),
        appBar: AppBar(
          backgroundColor: const Color(0xffF1F2F3),
          elevation: 0,
          automaticallyImplyLeading: false,
          leadingWidth: 0,
          //primary: false,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: DropdownButton(
                      style: const TextStyle(
                          color: Color(0xFF8E8E93), fontSize: 15),
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
                  const SizedBox(
                    width: 15,
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset(
                          "assets/Imag/fsf.svg",
                          width: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        body: ListView(
          // physics: BouncingScrollPhysics(),
          // shrinkWrap: false,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 10,
              child: ListView(
                scrollDirection: Axis.horizontal,
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width / 5,
                      height: MediaQuery.of(context).size.height / 18,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFFFFFFFF)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/Imag/pha.svg"),
                          Text("  Sales",
                              style: TextStyle(
                                  color: Color(0xFF1B1B1B),
                                  fontSize: 14,
                                  fontFamily: "Roboto"))
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width / 5,
                      height: MediaQuery.of(context).size.height / 18,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFFFFFFFF)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/Imag/hot.svg"),
                          Text("  Hot",
                              style: TextStyle(
                                  color: Color(0xFF1B1B1B),
                                  fontSize: 14,
                                  fontFamily: "Roboto"))
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width / 4.5,
                      height: MediaQuery.of(context).size.height / 18,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFFFFFFFF)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/Imag/Featured.svg"),
                          Text("  Featured",
                              style: TextStyle(
                                  color: Color(0xFF1B1B1B),
                                  fontSize: 14,
                                  fontFamily: "Roboto"))
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width / 4.5,
                      height: MediaQuery.of(context).size.height / 18,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFFFFFFFF)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/Imag/Discount.svg"),
                          Text("  Discount",
                              style: TextStyle(
                                  color: Color(0xFF1B1B1B),
                                  fontSize: 14,
                                  fontFamily: "Roboto"))
                        ],
                      ),
                    ),
                  )
                ],
              ),
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
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.66,
              child: GridView.builder(
                  // shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 300,
                  ),
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 3,
                        child: Container(
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
                                  child:
                                      SvgPicture.asset("assets/Imag/like.svg"),
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
                        ));
                  }),
            ),
          ],
        ));
  }
}
