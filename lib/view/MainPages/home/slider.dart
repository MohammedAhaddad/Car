import 'package:flutter/material.dart';

class sliderwedget extends StatelessWidget {
  String imag;
  String title;
  sliderwedget({required this.imag, required this.title}) {}
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(21),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(imag)) ??
                  DecorationImage(
                      image: AssetImage("assets/Imag/proportion21.png")),
              borderRadius: BorderRadius.circular(15)),
          //
        ),
        Positioned(
          left: 10,
          top: MediaQuery.of(context).size.height / 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Extreme bump test",
                  style: TextStyle(
                      color: Color(0xFFA4AEAE),
                      fontSize: 12,
                      fontFamily: "Roboto")),
              Text(title,
                  style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 14,
                      fontFamily: "Roboto"))
            ],
          ),
        )
      ]),
    );
  }
}
