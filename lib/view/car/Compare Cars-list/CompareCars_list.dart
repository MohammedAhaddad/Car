import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompareCarslist extends StatelessWidget {
  const CompareCarslist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  child: Text("Edit",
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
          itemCount: 10,
          itemBuilder: ((context, index) {
            return Container(
              padding: EdgeInsets.all(10),
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
                  Stack(
                    children: [
                      Divider(
                        height: MediaQuery.of(context).size.height / 15,
                        color: Color(0xFFD1D1D6),
                      ),
                      Positioned(
                          left: MediaQuery.of(context).size.width / 4,
                          right: MediaQuery.of(context).size.width / 5,
                          child: CircleAvatar(
                            child: Text("vs"),
                            backgroundColor: Color(0xFFD1D1D6),
                          ))
                    ],
                  )
                ],
              ),
            );
          })),
    );
  }
}
