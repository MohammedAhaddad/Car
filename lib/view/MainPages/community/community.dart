import 'package:car/view/SearchScreen/MainSearch/Search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class community extends StatelessWidget {
  const community({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF1F2F3),
        appBar: AppBar(
          backgroundColor: const Color(0xffF1F2F3),
          elevation: 0,
          automaticallyImplyLeading: false,
          //primary: false,
          actions: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: CupertinoSearchTextField(
                    onTap: () {
                      Get.to(() => Search());
                    },
                    backgroundColor: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 20,
                ),
                CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {},
                    )),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 20,
                ),
              ],
            )
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 9,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.all(10),
                          child: const Column(
                            children: [
                              CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/Imag/Ellipse59.png')),
                              Text("Abbey",
                                  style: TextStyle(
                                      color: Color(0xFF8E8E93),
                                      fontSize: 12,
                                      fontFamily: "Roboto"))
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.topLeft,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                DropdownButton(
                  iconSize: 20,
                  iconDisabledColor: const Color(0xFF1DB854),
                  iconEnabledColor: const Color(0xFF1DB854),
                  elevation: 0,
                  style: const TextStyle(
                      color: Color(0xFF1DB854),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto"),
                  value: "Recommend",
                  items: [
                    'Recommend',
                    'Bangkok1',
                    'Bangkok2',
                    'Bangkok3',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (v) {},
                ),
              ]),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/Imag/Ellipse 60.png')),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("  Prescott",
                                      style: TextStyle(
                                          color: Color(0xFF1B1B1B),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Roboto")),
                                  Text("  BMW 3 Series owner",
                                      style: TextStyle(
                                          color: Color(0xFF8E8E93),
                                          fontSize: 12,
                                          fontFamily: "Roboto"))
                                ],
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  margin: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width /
                                          2.8),
                                  padding:
                                      const EdgeInsets.only(left: 5, right: 5),
                                  height:
                                      MediaQuery.of(context).size.height / 25,
                                  width: MediaQuery.of(context).size.width / 5,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: const Color(0xFFFFFFFF)),
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.add,
                                        color: Color(0xFF1DB854),
                                      ),
                                      Text("Follow",
                                          style: TextStyle(
                                              color: Color(0xFF1DB854),
                                              fontSize: 12,
                                              fontFamily: "Roboto"))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width / 18,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Text(
                                  "Dramatic, fast and useable, with Mercedes’ thoroughness and AMG’s sporting genes.",
                                  style: TextStyle(
                                      color: Color(0xFF1B1B1B),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      fontFamily: "Roboto")))
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width / 18,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 3.7,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15)),
                        child: Image.asset(
                          "assets/Imag/proportion169.png",
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width / 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "5 days ago",
                            style: TextStyle(
                                color: Color(0xFFC7C7CC),
                                fontSize: 10,
                                // fontWeight: FontWeight.w100,
                                fontFamily: "Roboto"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                        "assets/Imag/Group826.svg"),
                                    Text(
                                      "  22",
                                      style: TextStyle(
                                          color: Color(0xFF1B1B1B),
                                          fontSize: 12,
                                          fontFamily: "Roboto-Light"),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 25,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    SvgPicture.asset("assets/Imag/2.svg"),
                                    Text(
                                      "  34",
                                      style: TextStyle(
                                          color: Color(0xFF1B1B1B),
                                          fontSize: 12,
                                          fontFamily: "Roboto-Light"),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 25,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/Imag/Group820.svg",
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      "  64",
                                      style: TextStyle(
                                          color: Color(0xFF1B1B1B),
                                          fontSize: 12,
                                          // fontWeight: FontWeight.w500,
                                          fontFamily: "Roboto-Light"),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ]),
                  );
                })
          ],
        ));
  }
}
