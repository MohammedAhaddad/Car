import 'package:car/view/NewsDetails/NewsDetailsMainScrren/NewsDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class hot extends StatelessWidget {
  const hot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
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
        InkWell(
          onTap: () {
            Get.to(() => const NewsDetails());
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
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
                  width: MediaQuery.of(context).size.width / 2.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
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
                          child: Text("By Akshit  Sep 05,2020",
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
              height: MediaQuery.of(context).size.height / 2,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 50,
                              ),
                              Image.asset("assets/Imag/3：2.png"),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 50,
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
          ],
        ),
      ],
    );
  }
}
