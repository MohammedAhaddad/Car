import 'package:car/view/SearchScreen/BrandPorsche/BrandPorsche.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Brand extends StatelessWidget {
  const Brand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leadingWidth: 20,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xFF8E8E93),
            ),
            onPressed: () {
              Get.back();
            },
          ),
          actions: [
            Row(
              children: [
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: Text("Brands",
                        style: TextStyle(
                            color: Color(0xFF1B1B1B),
                            fontSize: 14,
                            fontFamily: "Roboto"))),
              ],
            )
          ],
        ),
        body: ListView(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
              Column(children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(children: [
                    Row(
                      children: [
                        const Text("Popular brands",
                            style: TextStyle(
                                color: Color(0xFF1B1B1B),
                                fontSize: 20,
                                fontFamily: "Roboto")),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => BrandPorsche());
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 8,
                            width: MediaQuery.of(context).size.width / 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFFF1F2F3)),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                      "assets/Imag/toyota-logo.svg"),
                                  Text("Toyota",
                                      style: TextStyle(
                                          color: Color(0xFF1B1B1B),
                                          fontSize: 12,
                                          fontFamily: "Roboto"))
                                ]),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => BrandPorsche());
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 8,
                            width: MediaQuery.of(context).size.width / 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFFF1F2F3)),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                      "assets/Imag/mercedes-benz-logo.svg"),
                                  Text("Mercedes",
                                      style: TextStyle(
                                          color: Color(0xFF1B1B1B),
                                          fontSize: 12,
                                          fontFamily: "Roboto"))
                                ]),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => BrandPorsche());
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 8,
                            width: MediaQuery.of(context).size.width / 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFFF1F2F3)),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                      "assets/Imag/honda-logo.svg"),
                                  Text("Honda",
                                      style: TextStyle(
                                          color: Color(0xFF1B1B1B),
                                          fontSize: 12,
                                          fontFamily: "Roboto"))
                                ]),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => BrandPorsche());
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 8,
                            width: MediaQuery.of(context).size.width / 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFFF1F2F3)),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/Imag/buick-logo.png",
                                  ),
                                  Text("Buick",
                                      style: TextStyle(
                                          color: Color(0xFF1B1B1B),
                                          fontSize: 12,
                                          fontFamily: "Roboto"))
                                ]),
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
                            Get.to(() => BrandPorsche());
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 8,
                            width: MediaQuery.of(context).size.width / 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFFF1F2F3)),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset("assets/Imag/lexus-logo.png"),
                                  Text("Lexus",
                                      style: TextStyle(
                                          color: Color(0xFF1B1B1B),
                                          fontSize: 12,
                                          fontFamily: "Roboto"))
                                ]),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => BrandPorsche());
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 8,
                            width: MediaQuery.of(context).size.width / 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFFF1F2F3)),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset("assets/Imag/Porsche.png"),
                                  Text("Porsche",
                                      style: TextStyle(
                                          color: Color(0xFF1B1B1B),
                                          fontSize: 12,
                                          fontFamily: "Roboto"))
                                ]),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => BrandPorsche());
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 8,
                            width: MediaQuery.of(context).size.width / 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFFF1F2F3)),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset("assets/Imag/Volkswagen.png"),
                                  Text("Volkswagen",
                                      style: TextStyle(
                                          color: Color(0xFF1B1B1B),
                                          fontSize: 12,
                                          fontFamily: "Roboto"))
                                ]),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => BrandPorsche());
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 8,
                            width: MediaQuery.of(context).size.width / 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFFF1F2F3)),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset("assets/Imag/dfdgf.svg"),
                                  Text("Alfa Romeo",
                                      style: TextStyle(
                                          color: Color(0xFF1B1B1B),
                                          fontSize: 12,
                                          fontFamily: "Roboto"))
                                ]),
                          ),
                        )
                      ],
                    ),
                  ]),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  color: Color(0xFFF1F2F3),
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 13,
                  child: Text("A",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: "Roboto")),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.all(10),
                          child: Row(children: [
                            Image.asset("assets/Imag/lexus-logo.png"),
                            Text("Lexus",
                                style: TextStyle(
                                    color: Color(0xFF1B1B1B),
                                    fontSize: 12,
                                    fontFamily: "Roboto"))
                          ]),
                        );
                      }),
                )
              ]),
            ]));
  }
}
