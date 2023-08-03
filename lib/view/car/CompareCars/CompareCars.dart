import 'package:car/view/car/Compare%20Cars-list/CompareCars_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class CompareCars extends StatelessWidget {
  const CompareCars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F2F3),
      appBar: AppBar(
          backgroundColor: const Color(0xFFF1F2F3),
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
                  width: MediaQuery.of(context).size.width / 2.8,
                )
              ],
            )
          ]),
      body: ListView(physics: const BouncingScrollPhysics(), children: [
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        height: MediaQuery.of(context).size.height / 70,
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
                        height: MediaQuery.of(context).size.height / 70,
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
        InkWell(
          onTap: () {
            Get.to(() => CompareCarslist());
          },
          child: Container(
            margin: const EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 12,
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
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: Column(
            children: [
              const Row(
                children: [
                  Text("    Select Similar Cars",
                      style: TextStyle(
                          color: Color(0xFF8E8E93),
                          fontSize: 14,
                          fontFamily: "Roboto")),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.1,
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 20,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        height: MediaQuery.of(context).size.height / 1.5,
                        decoration: BoxDecoration(
                            color: const Color(0xFFF1F2F3),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(children: [
                          Image.asset(
                            "assets/Imag/p718.png",
                            width: MediaQuery.of(context).size.width / 3,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("   Mercedes SLC",
                                  style: TextStyle(
                                      color: Color(0xFF1B1B1B),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto")),
                            ],
                          ),
                          const Row(
                            children: [
                              Text("   \$42,70-\$48,70",
                                  style: TextStyle(
                                      color: Color(0xFF1DB854),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto")),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(value: T, onChanged: (v) {}),
                              const Text("Compare",
                                  style: TextStyle(
                                      color: Color(0xFF1B1B1B),
                                      fontSize: 10,
                                      fontFamily: "Roboto")),
                            ],
                          )
                        ]),
                      );
                    }),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
