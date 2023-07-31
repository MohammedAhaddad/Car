import 'package:car/MyCostm%20widget/MyButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FAQ extends StatelessWidget {
  const FAQ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
      )
    ]);
  }
}
