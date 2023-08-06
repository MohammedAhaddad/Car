import 'package:car/view/Auto%20parts/AutoParts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompareCarslist extends StatelessWidget {
  const CompareCarslist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int conte = 10;
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
          backgroundColor: const Color(0xFFFFFFFF),
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Color(0xFFAAB6C3),
              )),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Compare Cars",
                  style: TextStyle(
                      color: Color(0xFF1B1B1B),
                      fontSize: 14,
                      fontFamily: "Roboto"),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 4,
                ),
                InkWell(
                  onTap: () {},
                  child: const Text("Edit",
                      style: TextStyle(
                          color: Color(0xFF8E8E93),
                          fontSize: 14,
                          fontFamily: "Roboto")),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 20,
                ),
              ],
            )
          ]),
      body: ListView.builder(
          itemCount: conte,
          itemBuilder: ((context, index) {
            return Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset("assets/Imag/p718.png"),
                                  ],
                                )),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Porsche 718",
                                    style: TextStyle(
                                        color: Color(0xFF1B1B1B),
                                        fontSize: 20,
                                        fontFamily: "Roboto")),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 70,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Porsche/Luxury/The 2.3L EcoBoost",
                                        style: TextStyle(
                                            color: Color(0xFF8E8E93),
                                            fontSize: 12,
                                            fontFamily: "Roboto")),
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 70,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("\$62,000.00-\$74,000.00",
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
                    ],
                  ),
                  index < conte
                      ? Stack(
                          children: [
                            Divider(
                              height: MediaQuery.of(context).size.height / 15,
                              color: const Color(0xFFD1D1D6),
                            ),
                            Positioned(
                                left: MediaQuery.of(context).size.width / 5,
                                right: MediaQuery.of(context).size.width / 5,
                                top: MediaQuery.of(context).size.height / 300,
                                child: const CircleAvatar(
                                  child: Text("vs"),
                                  backgroundColor: Color(0xFFD1D1D6),
                                ))
                          ],
                        )
                      : const SizedBox()
                ],
              ),
            );
          })),
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
          InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width / 2.6,
              height: MediaQuery.of(context).size.height / 14,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: const Color(0xFF1DB854))),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: Color(0xFF1DB854),
                    ),
                    Text(
                      "Add Cars",
                      style: TextStyle(
                          color: Color(0xFF1DB854),
                          fontSize: 14,
                          fontFamily: "Roboto"),
                    ),
                  ]),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(() => AutoParts());
            },
            child: Container(
              margin: const EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width / 2.6,
              height: MediaQuery.of(context).size.height / 14,
              decoration: BoxDecoration(
                  color: const Color(0xFF1DB854),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: const Color(0xFF1DB854))),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Compare",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: "Roboto"),
                    ),
                  ]),
            ),
          ),
        ]),
      ),
    );
  }
}
