import 'package:car/controler/BottemBarControler/BottombarControler.dart';
import 'package:car/view/MainPages/Buy%20car/BuyCar.dart';
import 'package:car/view/MainPages/community/community.dart';
import 'package:car/view/MainPages/home/Home.dart';
import 'package:car/view/MainPages/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MainScrren extends StatelessWidget {
  const MainScrren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomBarControler>(
        init: BottomBarControler(),
        builder: (controler) {
          return Scaffold(
              bottomNavigationBar: Container(
                height: MediaQuery.of(context).size.height / 9,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: BottomNavigationBar(
                      onTap: (x) {
                        controler.pagRout(x);
                        controler.pageController
                            .jumpToPage(controler.pagRout(x));
                      },
                      currentIndex: controler.index,
                      selectedItemColor: Color(0xFF1DB854),
                      unselectedItemColor: Color(0xFF8E8E93),
                      selectedIconTheme:
                          IconThemeData(color: Color(0xFF1DB854)),
                      unselectedIconTheme:
                          IconThemeData(color: Color(0xFF1DB854)),
                      showUnselectedLabels: true,
                      elevation: 0,
                      // backgroundColor: Color(0xFF1DB854),
                      items: [
                        BottomNavigationBarItem(
                            icon: SvgPicture.asset(
                              "assets/Imag/home.svg",
                              color: controler.index == 0
                                  ? Color(0xFF1DB854)
                                  : Colors.grey,
                              height: MediaQuery.of(context).size.height / 30,
                            ),
                            label: "home"),
                        BottomNavigationBarItem(
                            icon: SvgPicture.asset(
                              "assets/Imag/bAYcAR.svg",
                              color: controler.index == 1
                                  ? Color(0xFF1DB854)
                                  : Colors.grey,
                              height: MediaQuery.of(context).size.height / 30,
                            ),
                            label: "Buy car"),
                        BottomNavigationBarItem(
                            icon: SvgPicture.asset(
                              "assets/Imag/Community.svg",
                              color: controler.index == 2
                                  ? Color(0xFF1DB854)
                                  : Colors.grey,
                              height: MediaQuery.of(context).size.height / 30,
                            ),
                            label: "Community"),
                        BottomNavigationBarItem(
                            icon: SvgPicture.asset(
                              "assets/Imag/profail.svg",
                              color: controler.index == 3
                                  ? Color(0xFF1DB854)
                                  : Colors.grey,
                              height: MediaQuery.of(context).size.height / 30,
                            ),
                            label: "Profile"),
                      ],
                    )),
              ),
              body: PageView(
                  controller: controler.pageController,
                  onPageChanged: (x) {
                    controler.pagRout(x);
                  },
                  children: [Home(), BuyCar(), community(), profail()]));
        });
  }
}
