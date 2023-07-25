import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Hot extends StatelessWidget {
  const Hot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: ((context, index) {
          return Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(children: [
              Row(
                children: [
                  CircleAvatar(
                    child: Image.asset("assets/Imag/Ellipse59.png"),
                  ),
                  Row(
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
                      Text("89  ",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF8E8E93),
                              fontFamily: "Roboto")),
                      InkWell(
                          onTap: () {},
                          child: SvgPicture.asset("assets/Imag/Like3.svg"))
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
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
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 10),
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
        }));
  }
}
