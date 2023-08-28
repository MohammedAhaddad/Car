import '../../../MyCostm widget/MyButton.dart';
import 'package:car/view/car/carDetailsPrice/carDetailsPrice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Price extends StatelessWidget {
  const Price({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Column(
          children: [
            Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Cayman",
                        style: TextStyle(
                            color: Color(0xFF1B1B1B),
                            fontSize: 14,
                            fontFamily: "Roboto")),
                    Text("\$62,000.00",
                        style: TextStyle(
                            color: Color(0xFF1DB854),
                            fontSize: 14,
                            fontFamily: "Roboto"))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("1988 cc, Automatic,petrol,9.0 kmpl",
                        style: TextStyle(
                            color: Color(0xFF8E8E93),
                            fontSize: 10,
                            fontFamily: "Roboto")),
                    Row(
                      children: [
                        const Text("Compare",
                            style: TextStyle(
                                color: Color(0xFF8E8E93),
                                fontSize: 10,
                                fontFamily: "Roboto")),
                        Checkbox(value: false, onChanged: (v) {})
                      ],
                    )
                  ],
                ),
              ],
            ),
            const Divider(
              color: Color(0xFFD1D1D6),
            ),
            Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Boxster",
                        style: TextStyle(
                            color: Color(0xFF1B1B1B),
                            fontSize: 14,
                            fontFamily: "Roboto")),
                    Text("\$62,000.00",
                        style: TextStyle(
                            color: Color(0xFF1DB854),
                            fontSize: 14,
                            fontFamily: "Roboto"))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("1988 cc, Automatic,petrol,9.0 kmpl",
                        style: TextStyle(
                            color: Color(0xFF8E8E93),
                            fontSize: 10,
                            fontFamily: "Roboto")),
                    Row(
                      children: [
                        const Text("Compare",
                            style: TextStyle(
                                color: Color(0xFF8E8E93),
                                fontSize: 10,
                                fontFamily: "Roboto")),
                        Checkbox(value: false, onChanged: (v) {})
                      ],
                    )
                  ],
                ),
              ],
            ),
            const Divider(
              color: Color(0xFFD1D1D6),
            ),
            Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Spyder",
                        style: TextStyle(
                            color: Color(0xFF1B1B1B),
                            fontSize: 14,
                            fontFamily: "Roboto")),
                    Text("\$70,000.00",
                        style: TextStyle(
                            color: Color(0xFF1DB854),
                            fontSize: 14,
                            fontFamily: "Roboto"))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("3995 cc, Automatic,petrol,9.0 kmpl",
                        style: TextStyle(
                            color: Color(0xFF8E8E93),
                            fontSize: 10,
                            fontFamily: "Roboto")),
                    Row(
                      children: [
                        const Text("Compare",
                            style: TextStyle(
                                color: Color(0xFF8E8E93),
                                fontSize: 10,
                                fontFamily: "Roboto")),
                        Checkbox(value: false, onChanged: (v) {})
                      ],
                    )
                  ],
                ),
              ],
            ),
            const Divider(
              color: Color(0xFFD1D1D6),
            ),
            Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Cayman GT4",
                        style: TextStyle(
                            color: Color(0xFF1B1B1B),
                            fontSize: 14,
                            fontFamily: "Roboto")),
                    Text("\$72,000.00",
                        style: TextStyle(
                            color: Color(0xFF1DB854),
                            fontSize: 14,
                            fontFamily: "Roboto"))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("3995 cc, Automatic,petrol,9.17 kmpl",
                        style: TextStyle(
                            color: Color(0xFF8E8E93),
                            fontSize: 10,
                            fontFamily: "Roboto")),
                    Row(
                      children: [
                        const Text("Compare",
                            style: TextStyle(
                                color: Color(0xFF8E8E93),
                                fontSize: 10,
                                fontFamily: "Roboto")),
                        Checkbox(value: false, onChanged: (v) {})
                      ],
                    )
                  ],
                ),
              ],
            ),
            const Divider(
              color: Color(0xFFD1D1D6),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 30,
        ),
        const Row(
          children: [
            Text("Recommend for you",
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF8E8E93),
                    fontFamily: "Roboto"))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Get.to(() => const carDetailsPrice());
              },
              child: Container(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/Imag/Rectangle 517.png",
                    ),
                    const Text("BMW 6 Series GT",
                        style: TextStyle(
                            fontSize: 10,
                            color: Color(0xFF1B1B1B),
                            fontFamily: "Roboto"))
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(() => const carDetailsPrice());
              },
              child: Container(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/Imag/Continental.png",
                    ),
                    const Text("Continental",
                        style: TextStyle(
                            fontSize: 10,
                            color: Color(0xFF1B1B1B),
                            fontFamily: "Roboto"))
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(() => const carDetailsPrice());
              },
              child: Container(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/Imag/mm.png",
                    ),
                    const Text("Mercedes SLC",
                        style: TextStyle(
                            fontSize: 10,
                            color: Color(0xFF1B1B1B),
                            fontFamily: "Roboto"))
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Get.to(() => const carDetailsPrice());
              },
              child: Container(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/Imag/Acura NSX.png",
                    ),
                    const Text("Acura NSX",
                        style: TextStyle(
                            fontSize: 10,
                            color: Color(0xFF1B1B1B),
                            fontFamily: "Roboto"))
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(() => const carDetailsPrice());
              },
              child: Container(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/Imag/Polestar 1.png",
                    ),
                    const Text("Polestar 1",
                        style: TextStyle(
                            fontSize: 10,
                            color: Color(0xFF1B1B1B),
                            fontFamily: "Roboto"))
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(() => const carDetailsPrice());
              },
              child: Container(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/Imag/Lexus.svg",
                    ),
                    const Text("Mercedes SLC",
                        style: TextStyle(
                            fontSize: 10,
                            color: Color(0xFF1B1B1B),
                            fontFamily: "Roboto"))
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 30,
        ),
        DefultBigButton(
          text: "Get Offers from Dealer",
          ontab: () {
            showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                enableDrag: true,
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: MediaQuery.of(context).size.height / 1.4,
                    decoration: const BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25))),
                    child: ListView(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 4,
                          ),
                          const Text("Get Offers from Dealer",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF8E8E93),
                                  fontFamily: "Roboto")),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  icon: Icon(
                                    Icons.close,
                                    color: Color(0xFF8E8E93),
                                  ))
                            ],
                          )
                        ],
                      ),
                      Container(
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
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              8,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              4,
                                          margin: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: const Color(0xFFF1F2F3)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Image.asset(
                                                  "assets/Imag/p718.png"),
                                            ],
                                          )),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text("Porsche 718",
                                              style: TextStyle(
                                                  color: Color(0xFF1B1B1B),
                                                  fontSize: 20,
                                                  fontFamily: "Roboto")),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                70,
                                          ),
                                          const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                  "Porsche/Luxury/The 2.3L EcoBoost",
                                                  style: TextStyle(
                                                      color: Color(0xFF8E8E93),
                                                      fontSize: 12,
                                                      fontFamily: "Roboto")),
                                            ],
                                          ),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                70,
                                          ),
                                          const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
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
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(13),
                        child: Form(
                            child: Column(
                          children: [
                            TextFormField(
                              style: const TextStyle(color: Colors.black),
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                  labelStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: "Roboto-Light"),
                                  hintStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: "Roboto"),
                                  labelText: 'Phone number',
                                  hintText: ' 9874563121',
                                  suffixIcon: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.cancel,
                                        color: Colors.grey[300],
                                      ))),
                            ),
                            TextFormField(
                              style: const TextStyle(color: Colors.black),
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                  labelStyle: const TextStyle(
                                      color: Color(0xFF8E8E93),
                                      fontSize: 14,
                                      fontFamily: "Roboto-Light"),
                                  hintStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: "Roboto"),
                                  labelText: 'Name',
                                  hintText: ' Palmer',
                                  suffixIcon: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.cancel,
                                        color: Colors.grey[300],
                                      ))),
                            ),
                            TextFormField(
                              style: const TextStyle(color: Colors.black),
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                  labelStyle: const TextStyle(
                                      color: Color(0xFF8E8E93),
                                      fontSize: 14,
                                      fontFamily: "Roboto-Light"),
                                  hintStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: "Roboto"),
                                  labelText: 'City',
                                  hintText: ' Palmer',
                                  suffixIcon: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.grey[300],
                                      ))),
                            ),
                            TextFormField(
                              style: const TextStyle(color: Colors.black),
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                  labelStyle: const TextStyle(
                                      color: Color(0xFF8E8E93),
                                      fontSize: 14,
                                      fontFamily: "Roboto-Light"),
                                  hintStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: "Roboto"),
                                  labelText: 'City',
                                  suffixIcon: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.grey[300],
                                      ))),
                            ),
                          ],
                        )),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: DefultBigButton(
                          ontab: () {},
                          text: "Submit",
                          backGroundColor: Color(0xFF1DB854),
                        ),
                      )
                    ]),
                  );
                });
          },
          backGroundColor: const Color(0xFF1DB854),
        )
      ]),
    );
  }
}
