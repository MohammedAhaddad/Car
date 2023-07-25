import 'package:car/MyCostm%20widget/MyButton.dart';
import 'package:car/view/Auhe/name-email/full_name_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

// ignore: must_be_immutable
class Verrification extends StatelessWidget {
  int scend = 56;

  Verrification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          child: const Icon(
            Icons.arrow_back,
            color: Color(0xFF8E8E93),
          ),
          onTap: () {
            Get.back();
          },
        ),
      ),
      body: ListView(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 4,
        ),
        const Column(children: [
          Text(
            "Verrification",
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontFamily: "Roboto"),
          ),
          Text("we texted you a code to verify \n      your phone number",
              style: TextStyle(
                  color: Colors.black, fontSize: 14, fontFamily: "Roboto"))
        ]),
        SizedBox(
          height: MediaQuery.of(context).size.height / 14,
        ),
        Pinput(
          //  autofillHints: ["-"],
          // mainAxisAlignment: MainAxisAlignment.s,
          length: 4,
          // defaultPinTheme: defaultPinTheme,
          // focusedPinTheme: focusedPinTheme,
          // submittedPinTheme: submittedPinTheme,

          showCursor: true,
          onCompleted: (pin) => print(pin),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 14,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DefultBigButton(
              width: 1.2,
              radis: 20,
              backGroundColor: const Color(0xFF1DB854),
              ontab: () {
                Get.to(() => full_name_email());
              },
              text: "Continue",
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Resend in $scend Sec",
                style: TextStyle(
                    color: Color(0xFF1DB854),
                    fontSize: 12,
                    fontFamily: "Roboto"))
          ],
        )
      ]),
    );
  }
}
