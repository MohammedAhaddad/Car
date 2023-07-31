import 'package:car/MyCostm%20widget/MyButton.dart';
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
                Row(
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
                    Text("1988 cc, Automatic,petrol,9.0 kmpl",
                        style: TextStyle(
                            color: Color(0xFF8E8E93),
                            fontSize: 10,
                            fontFamily: "Roboto")),
                    Row(
                      children: [
                        Text("Compare",
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
            Divider(
              color: Color(0xFFD1D1D6),
            ),
            Column(
              children: [
                Row(
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
                    Text("1988 cc, Automatic,petrol,9.0 kmpl",
                        style: TextStyle(
                            color: Color(0xFF8E8E93),
                            fontSize: 10,
                            fontFamily: "Roboto")),
                    Row(
                      children: [
                        Text("Compare",
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
            Divider(
              color: Color(0xFFD1D1D6),
            ),
            Column(
              children: [
                Row(
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
                    Text("3995 cc, Automatic,petrol,9.0 kmpl",
                        style: TextStyle(
                            color: Color(0xFF8E8E93),
                            fontSize: 10,
                            fontFamily: "Roboto")),
                    Row(
                      children: [
                        Text("Compare",
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
            Divider(
              color: Color(0xFFD1D1D6),
            ),
            Column(
              children: [
                Row(
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
                    Text("3995 cc, Automatic,petrol,9.17 kmpl",
                        style: TextStyle(
                            color: Color(0xFF8E8E93),
                            fontSize: 10,
                            fontFamily: "Roboto")),
                    Row(
                      children: [
                        Text("Compare",
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
            Divider(
              color: Color(0xFFD1D1D6),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 30,
        ),
        Row(
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
                Get.to(() => carDetailsPrice());
              },
              child: Container(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/Imag/Rectangle 517.png",
                    ),
                    Text("BMW 6 Series GT",
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
                Get.to(() => carDetailsPrice());
              },
              child: Container(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/Imag/Continental.png",
                    ),
                    Text("Continental",
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
                Get.to(() => carDetailsPrice());
              },
              child: Container(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/Imag/mm.png",
                    ),
                    Text("Mercedes SLC",
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
                Get.to(() => carDetailsPrice());
              },
              child: Container(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/Imag/Acura NSX.png",
                    ),
                    Text("Acura NSX",
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
                Get.to(() => carDetailsPrice());
              },
              child: Container(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/Imag/Polestar 1.png",
                    ),
                    Text("Polestar 1",
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
                Get.to(() => carDetailsPrice());
              },
              child: Container(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/Imag/Lexus.svg",
                    ),
                    Text("Mercedes SLC",
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
          ontab: () {},
          backGroundColor: Color(0xFF1DB854),
        )
      ]),
    );
  }
}
