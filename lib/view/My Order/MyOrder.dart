import 'package:car/MyCostm%20widget/MyButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MyOrder extends StatelessWidget {
  MyOrder({Key? key}) : super(key: key);
  List<String> options = ['******98755', 'Option 2', 'Option 3', 'Option 4'];
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
                  "My Order",
                  style: TextStyle(
                      color: Color(0xFF1B1B1B),
                      fontSize: 14,
                      fontFamily: "Roboto"),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
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
          itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height / 7,
              decoration: BoxDecoration(
                  color: const Color(0xFFF1F2F3),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 50,
                  ),
                  Image.asset("assets/Imag/Acura CDX.png"),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Orion Motor Wheel Spacers",
                          style: TextStyle(
                              color: Color(0xFF1B1B1B),
                              fontSize: 14,
                              fontFamily: "Roboto")),
                      Container(
                        height: MediaQuery.of(context).size.height / 18,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Row(children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.remove,
                                color: Color(0xFF8E8E93),
                              )),
                          const Text("1",
                              style: TextStyle(
                                  color: Color(0xFF1B1B1B),
                                  fontSize: 14,
                                  fontFamily: "Roboto")),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.add,
                                  color: Color(0xFF8E8E93)))
                        ]),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 10,
                          ),
                          const Text("\$21.00",
                              style: TextStyle(
                                  color: Color(0xFF1DB854),
                                  fontSize: 14,
                                  fontFamily: "Roboto")),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 20,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            );
          }),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(12),
        height: MediaQuery.of(context).size.height / 2.9,
        decoration: const BoxDecoration(
            color: Color(0xFFF1F2F3),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Discount",
                          style: TextStyle(
                              color: Color(0xFF1B1B1B),
                              fontSize: 14,
                              fontFamily: "Roboto")),
                      Text("\$8.00",
                          style: TextStyle(
                              color: Color(0xFF1B1B1B),
                              fontSize: 14,
                              fontFamily: "Roboto"))
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 80,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total",
                          style: TextStyle(
                              color: Color(0xFF1B1B1B),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Roboto")),
                      Text("\$126.00",
                          style: TextStyle(
                              color: Color(0xFF1DB854),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Roboto"))
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Order time",
                          style: TextStyle(
                              color: Color(0xFF1B1B1B),
                              fontSize: 14,
                              fontFamily: "Roboto")),
                      Text("7:15 pm",
                          style: TextStyle(
                              color: Color(0xFF8E8E93),
                              fontSize: 14,
                              fontFamily: "Roboto"))
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 80,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Expected delivery time",
                          style: TextStyle(
                              color: Color(0xFF1B1B1B),
                              fontSize: 14,
                              fontFamily: "Roboto")),
                      Text("18:00 pm",
                          style: TextStyle(
                              color: Color(0xFF8E8E93),
                              fontSize: 14,
                              fontFamily: "Roboto"))
                    ],
                  ),
                ],
              ),
              DefultBigButton(
                width: 0,
                radis: 30,
                backGroundColor: const Color(0xFF1DB854),
                text: "Pay now",
                ontab: () {
                  showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25))),
                      builder: (BuildContext context) {
                        return Container(
                          padding: EdgeInsets.all(15),
                          child: Column(children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 50,
                            ),
                            Column(
                              children: [
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Discount",
                                        style: TextStyle(
                                            color: Color(0xFF1B1B1B),
                                            fontSize: 14,
                                            fontFamily: "Roboto")),
                                    Text("\$8.00",
                                        style: TextStyle(
                                            color: Color(0xFF1B1B1B),
                                            fontSize: 14,
                                            fontFamily: "Roboto"))
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 80,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Total",
                                        style: TextStyle(
                                            color: Color(0xFF1B1B1B),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Roboto")),
                                    Text("\$126.00",
                                        style: TextStyle(
                                            color: Color(0xFF1DB854),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Roboto"))
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 15,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text("Address",
                                        style: TextStyle(
                                            color: Color(0xFF1B1B1B),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Roboto"))
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                          "6360 Sunset Blvd, Los Angeles, CA 90028 United States",
                                          style: TextStyle(
                                              color: Color(0xFF8E8E93),
                                              fontSize: 12,
                                              fontFamily: "Roboto")),
                                    ),
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text("Edit",
                                            style: TextStyle(
                                                color: Color(0xFF1DB854),
                                                fontSize: 14,
                                                fontFamily: "Roboto")))
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 15,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text("Payment",
                                        style: TextStyle(
                                            color: Color(0xFF1B1B1B),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Roboto"))
                                  ],
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        "assets/Imag/MasterCard.svg"),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          1.19,
                                      child: DropdownButton<String>(
                                        isExpanded: true,
                                        hint: Text(" ******98755"),
                                        value: "******98755",
                                        items: options.map((String option) {
                                          return DropdownMenuItem<String>(
                                            value: option,
                                            child: Text(option),
                                          );
                                        }).toList(),
                                        onChanged: (v) {},
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            DefultBigButton(
                              width: 0,
                              radis: 30,
                              backGroundColor: const Color(0xFF1DB854),
                              ontab: () {},
                              text: "Submit",
                            )
                          ]),
                        );
                      });
                },
              )
            ]),
      ),
    );
  }
}
