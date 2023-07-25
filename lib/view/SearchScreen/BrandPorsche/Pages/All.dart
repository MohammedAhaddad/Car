import 'package:flutter/material.dart';

class All extends StatelessWidget {
  const All({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10),
              margin: const EdgeInsets.only(top: 20, bottom: 3),
              width: MediaQuery.of(context).size.width / 5,
              height: MediaQuery.of(context).size.height / 7,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/Imag/car.png",
                        width: MediaQuery.of(context).size.width / 4,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 30,
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
                      Text("Honda/Hatchback",
                          style: TextStyle(
                              color: Color(0xFF8E8E93),
                              fontSize: 10,
                              fontFamily: "Roboto")),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 50,
                      ),
                      Text("\$500,000",
                          style: TextStyle(
                              color: Color(0xFF1DB854),
                              fontSize: 14,
                              fontFamily: "Roboto"))
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
