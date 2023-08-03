import 'package:car/MyCostm%20widget/MyButton.dart';
import 'package:car/view/car/car-Details%E2%80%931/carDetails_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class FAQ extends StatelessWidget {
  const FAQ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
        padding: EdgeInsets.all(13),
        height: MediaQuery.of(context).size.height / 8,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Color(0xFFF1F2F3)),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SvgPicture.asset("assets/Imag/qa.svg"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Have any question?",
                  style: TextStyle(
                      color: Color(0xFF1B1B1B),
                      fontSize: 14,
                      fontFamily: "Roboto")),
              Text("Click the button ",
                  style: TextStyle(
                      color: Color(0xFF8E8E93),
                      fontSize: 12,
                      fontFamily: "Roboto"))
            ],
          ),
          DefultBigButton(
            radis: 5,
            backGroundColor: Color(0xFF1DB854),
            ontab: () {},
            text: "Ask Now",
            width: 5,
            height: 30,
          )
        ]),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height / 1.5,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(13),
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFF1F2F3)),
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 80),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/Imag/question.svg",
                          width: MediaQuery.of(context).size.width / 20,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 20,
                        ),
                        Expanded(
                            child: Text(
                                "How much price we have to pay for buying Porsche 718 Boxter?",
                                style: TextStyle(
                                    fontSize: 12, fontFamily: "Roboto")))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 30),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/Imag/answer.svg",
                          width: MediaQuery.of(context).size.width / 20,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 20,
                        ),
                        Expanded(
                            child: Text(
                                "For this, we would suggest you walk into the nearest dealership as they will be the better person to assist you. ",
                                style: TextStyle(
                                    color: Color(0xFF8E8E93),
                                    fontSize: 12,
                                    fontFamily: "Roboto")))
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 20,
                          left: MediaQuery.of(context).size.width / 10,
                          right: MediaQuery.of(context).size.width / 35),
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: Column(
                        children: [
                          Divider(),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SvgPicture.asset(
                                    "assets/Imag/Group 844.svg",
                                    width:
                                        MediaQuery.of(context).size.width / 25,
                                  ),
                                  Text(
                                    " Helpful (6)",
                                    style: TextStyle(
                                        color: Color(0xFF1DB854),
                                        fontSize: 12,
                                        fontFamily: "Roboto"),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    Text("2 Answers",
                                        style: TextStyle(
                                            color: Color(0xFF1DB854),
                                            fontSize: 12,
                                            fontFamily: "Roboto")),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color(0xFF1DB854),
                                      size: MediaQuery.of(context).size.width /
                                          30,
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ))
                ]),
              );
            }),
      ),
      DefultBigButton(
        backGroundColor: Color(0xFF1DB854),
        text: "Get Offers from Dealer",
        ontab: () {
          Get.to(() => carDetails_1());
        },
      )
    ]);
  }
}
