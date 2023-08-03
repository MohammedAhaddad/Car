import 'package:flutter/material.dart';

class Photos extends StatelessWidget {
  const Photos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("  2020 Cayman 2T",
                  style: TextStyle(
                      color: Color(0xFF1B1B1B),
                      fontSize: 12,
                      fontFamily: "Roboto")),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2.5,
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return Container(
                        height: MediaQuery.of(context).size.height / 5,
                        width: MediaQuery.of(context).size.width / 4,
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/Imag/Rectangle 525.png',
                              ),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                      );
                    }),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("  2020 boxster spyder",
                  style: TextStyle(
                      color: Color(0xFF1B1B1B),
                      fontSize: 12,
                      fontFamily: "Roboto")),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2.5,
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return Container(
                        height: MediaQuery.of(context).size.height / 5,
                        width: MediaQuery.of(context).size.width / 4,
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/Imag/Rectangle 526.png',
                              ),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                      );
                    }),
              )
            ],
          )
        ],
      ),
    );
  }
}
