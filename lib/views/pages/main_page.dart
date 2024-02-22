import 'package:bionic_slicing_ui/themes/theme.dart';
import 'package:bionic_slicing_ui/views/pages/page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget bottomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            24,
          ),
          topRight: Radius.circular(
            24,
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: whiteColor,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: purpleColor,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: whiteTextStyle,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 5,
                ),
                // child: Image.asset(
                //   currentIndex == 0
                //       ? 'assets/icons/icon_home_fill.png'
                //       : 'assets/icons/icon_home_light.png',
                //   color: brownColor,
                //   width: 24,
                // ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 10,
                ),
                // child: Image.asset(
                //   currentIndex == 1
                //       ? 'assets/icons/icon_scan_fill.png'
                //       : 'assets/icons/icon_scan_light.png',
                //   color: brownColor,
                //   width: 24,
                // ),
              ),
              label: 'Learning',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 5,
                ),
                // child: Image.asset(
                //   currentIndex == 2
                //       ? 'assets/icons/icon_store_fill.png'
                //       : 'assets/icons/icon_store_light.png',
                //   color: brownColor,
                //   width: 24,
                // ),
              ),
              label: 'Booking',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 5,
                ),
                // child: Image.asset(
                //   currentIndex == 3
                //       ? 'assets/icons/icon_profile_fill.png'
                //       : 'assets/icons/icon_profile_light.png',
                //   color: brownColor,
                //   width: 24,
                // ),
              ),
              label: 'Profile',
            ),
          ],
        ),
      );
    }

    Widget? body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return LearningPage();
          break;
        case 2:
          return HomePage();
          break;
        case 3:
          return LearningPage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      bottomNavigationBar: bottomNav(),
      body: body(),
    );
  }
}
