import 'package:car/controler/MainScreenControler/MainScreenControler.dart';
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
        body: GetBuilder<MainScreenControler>(
            init: MainScreenControler(),
            builder: (controler) {
              return ListView(
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
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 3.5,
                            width: MediaQuery.of(context).size.width,
                            child: GridView.builder(
                                itemCount: controler.brand.length,
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 4),
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {
                                      Get.to(() => BrandPorsche());
                                    },
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height,
                                      margin: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Color(0xFFF1F2F3)),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.network(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    10,
                                                controler.brand[index].logo ??
                                                    ""),
                                            Text(
                                                controler.brand[index].name ??
                                                    "Toyota",
                                                style: TextStyle(
                                                    color: Color(0xFF1B1B1B),
                                                    fontSize: 12,
                                                    fontFamily: "Roboto"))
                                          ]),
                                    ),
                                  );
                                }),
                          )
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
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: controler.brand.length,
                            itemBuilder: (context, index) {
                              return Container(
                                padding: EdgeInsets.all(10),
                                child: Row(children: [
                                  Image.network(
                                      width: MediaQuery.of(context).size.width /
                                          10,
                                      controler.brand[index].logo ?? ""),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 50,
                                  ),
                                  Text(controler.brand[index].name ?? "Toyota",
                                      style: TextStyle(
                                          color: Color(0xFF1B1B1B),
                                          fontSize: 12,
                                          fontFamily: "Roboto"))
                                ]),
                              );
                            }),
                      )
                    ]),
                  ]);
            }));
  }
}
