import 'package:car/MyCostm%20widget/MyButton.dart';
import 'package:car/view/Auhe/My%20Location/My_Location.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class full_name_email extends StatelessWidget {
  const full_name_email({Key? key}) : super(key: key);

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
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                Form(
                    child: Column(
                  children: [
                    TextFormField(
                      style: const TextStyle(color: Colors.white),
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
                          labelText: 'Full name',
                          hintText: ' Pimeunovic',
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.cancel,
                                color: Colors.grey[300],
                              ))),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 35,
                    ),
                    TextFormField(
                      style: const TextStyle(color: Colors.white),
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
                          labelText: 'E-mail',
                          hintText: ' youemail@example.com',
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.cancel,
                                color: Colors.grey[300],
                              ))),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 35,
                    ),
                    const Row(
                      children: [
                        Text("Don't miss our latest promotions and updates",
                            style: TextStyle(
                                color: Color(0xFF8E8E93),
                                fontSize: 12,
                                fontFamily: "Roboto"))
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 35,
                    ),
                    TextFormField(
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          labelStyle: const TextStyle(
                            color: Color(0xFF8E8E93),
                            fontSize: 14,
                            fontFamily: "Roboto-Light",
                          ),
                          hintStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: "Roboto"),
                          labelText: 'password',
                          hintText: ' asd1234567892',
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.cancel,
                                color: Colors.grey[300],
                              ))),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 35,
                    ),
                    TextFormField(
                      style: const TextStyle(color: Colors.white),
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
                          labelText: 'Confirm password',
                          hintText: ' **** **** **** ****',
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.cancel,
                                color: Colors.grey[300],
                              ))),
                    ),
                  ],
                )),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DefultBigButton(
                      width: 1.15,
                      radis: 20,
                      backGroundColor: const Color(0xFF1DB854),
                      ontab: () {
                        Get.to(My_Location());
                      },
                      text: "Continue",
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
