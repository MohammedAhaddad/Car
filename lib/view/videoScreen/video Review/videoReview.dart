import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class videoReview extends StatelessWidget {
  const videoReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F2F3),
      body: ListView(children: [
        Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/Imag/192.png",
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
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Color(0xFFAAB6C3),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: CircleAvatar(
                        backgroundColor: const Color(0xFF000000),
                        child: SvgPicture.asset(
                          "assets/Imag/Shar2.svg",
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: const Text(
              "2019 Macan Facelift Launched; More Affordable Than Before",
              style: TextStyle(
                  color: Color(0xFF1B1B1B),
                  fontSize: 20,
                  fontFamily: "Roboto")),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Reviews",
                    style: TextStyle(
                        color: Color(0xFF8E8E93),
                        fontSize: 14,
                        fontFamily: "Roboto")),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.close,
                      color: Color(0xFF8E8E93),
                    ))
              ],
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: ((context, index) {
                  return Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Column(children: [
                      Row(
                        children: [
                          CircleAvatar(
                            child: Image.asset("assets/Imag/Ellipse59.png"),
                          ),
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("  Uzair Arshad",
                                  style: TextStyle(
                                      color: Color(0xFF8E8E93),
                                      fontSize: 14,
                                      fontFamily: "Roboto")),
                              Text(" .3 hours ago",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xFFC7C7CC),
                                      fontFamily: "Roboto"))
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.8,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text("89  ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFF8E8E93),
                                      fontFamily: "Roboto")),
                              InkWell(
                                  onTap: () {},
                                  child:
                                      SvgPicture.asset("assets/Imag/Like3.svg"))
                            ],
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 50, right: 50, top: 10),
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                                    "Porsche actually wanted to name this something else, but that name was already taycan",
                                    style: TextStyle(
                                        color: Color(0xFF1B1B1B),
                                        fontSize: 12,
                                        fontFamily: "Roboto")))
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 50, top: 10),
                        child: Row(
                          children: [
                            Text("17 Reply",
                                style: TextStyle(
                                    color: Color(0xFF1DB854),
                                    fontSize: 12,
                                    fontFamily: "Roboto"))
                          ],
                        ),
                      )
                    ]),
                  );
                }))
          ]),
        )
      ]),
      bottomNavigationBar: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.only(left: 15, right: 15),
        height: MediaQuery.of(context).size.height / 8,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            color: Color(0xFFF1F2F3),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Row(children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width / 1.08,
            child: CupertinoSearchTextField(
                placeholder: "  Say something…",
                backgroundColor: Colors.white,
                borderRadius: BorderRadius.circular(30),
                prefixIcon: SvgPicture.asset("assets/Imag/pan.svg")),
          ),
        ]),
      ),
    );
  }
}
