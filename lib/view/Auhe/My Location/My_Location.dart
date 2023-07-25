import 'package:car/view/MainPages/MainScrren.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class My_Location extends StatelessWidget {
  const My_Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F2F3),
      appBar: AppBar(
        backgroundColor: const Color(0xffF1F2F3),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(1),
          child: Center(
            child: CupertinoSearchTextField(
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        leading: InkWell(
          child: const Icon(
            Icons.close,
            color: Color(0xFF8E8E93),
          ),
          onTap: () {
            Get.back();
          },
        ),
      ),
      body: ListView(
        children: [
          Container(
              margin: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  const Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text("Selected:",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: "Roboto-Light")),
                      Text(" Bangkok",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: "Roboto"))
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 12),
                    height: MediaQuery.of(context).size.height / 1.3,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("City location",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: "Roboto-Light")),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Color(0xFF8E8E93),
                                    ),
                                    Text("Bangkok",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: "Roboto")),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Detect ",
                                        style: TextStyle(
                                            color: Color(0xFF1DB854),
                                            fontSize: 14,
                                            fontFamily: "Roboto"))
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text("  Hot City",
                                style: TextStyle(
                                    color: Color(0xFF8E8E93),
                                    fontSize: 14,
                                    fontFamily: "Roboto"))
                            ///////////////////////
                            ,
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 1.2,
                              height: MediaQuery.of(context).size.height / 20,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 20,
                                  itemBuilder: (contect, index) {
                                    return Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Get.to(() => MainScrren());
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                5,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                25,
                                            child: Text("New York"),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color(0xFFF1F2F3)),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        )
                                      ],
                                    );
                                  }),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 1.9,
                                  width:
                                      MediaQuery.of(context).size.width / 1.12,
                                  child: ListView.builder(
                                      itemCount: 50,
                                      itemBuilder: (context, index) {
                                        return Row(
                                          children: [
                                            InkWell(
                                              onTap: () {},
                                              child: const Text("Aledela",
                                                  style: TextStyle(
                                                      color: Color(0xFF8E8E93),
                                                      fontSize: 16,
                                                      fontFamily: "Roboto")),
                                            ),
                                            const SizedBox(
                                              height: 60,
                                            )
                                          ],
                                        );
                                      }),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
