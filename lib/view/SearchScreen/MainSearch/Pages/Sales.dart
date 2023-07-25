import 'package:car/view/SearchScreen/Search-Brand/SearchBrand.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Sales extends StatelessWidget {
  const Sales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          int indexx = index + 1;
          return InkWell(
            onTap: () {
              Get.to(() => SearchBrand());
            },
            child: Container(
              padding: EdgeInsets.all(10),
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              width: MediaQuery.of(context).size.width / 5,
              height: MediaQuery.of(context).size.height / 7,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(" $indexx . ",
                          style: const TextStyle(
                              color: Color(0xFF1B1B1B),
                              fontSize: 14,
                              fontFamily: "Roboto")),
                      Image.asset(
                        "assets/Imag/car.png",
                        width: MediaQuery.of(context).size.width / 4,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Acura CDX",
                          style: TextStyle(
                              color: Color(0xFF1B1B1B),
                              fontSize: 14,
                              fontFamily: "Roboto")),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 50,
                      ),
                      Text("Honda/Hatchback/\$26,670",
                          style: TextStyle(
                              color: Color(0xFF8E8E93),
                              fontSize: 10,
                              fontFamily: "Roboto"))
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("4532",
                          style: TextStyle(
                              color: Color(0xFF1DB854),
                              fontSize: 14,
                              fontFamily: "Roboto")),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 50,
                      ),
                      Text("Sell",
                          style: TextStyle(
                              color: Color(0xFF8E8E93),
                              fontSize: 10,
                              fontFamily: "Roboto"))
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
