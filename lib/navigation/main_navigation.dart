import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medic/core/theme/app_color.dart';
import 'package:medic/features/home/pages/home_page.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  //! nav bar UI error
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: NavigationBar(
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            backgroundColor: AppColors.blue,
            indicatorColor: Colors.transparent,
            height: h * .05,
            onDestinationSelected: (int index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            selectedIndex: currentPageIndex,
            destinations: [
              NavigationDestination(
                icon: Icon(Icons.home, color: AppColors.black),
                selectedIcon: Icon(Icons.home, color: AppColors.white),
                label: 'Home',
              ),
              NavigationDestination(
                icon: FaIcon(FontAwesomeIcons.message, color: AppColors.black),
                selectedIcon: FaIcon(
                  FontAwesomeIcons.message,
                  color: AppColors.white,
                ),
                label: 'Message',
              ),
              NavigationDestination(
                icon: FaIcon(FontAwesomeIcons.person, color: AppColors.black),
                selectedIcon: FaIcon(
                  FontAwesomeIcons.person,
                  color: AppColors.white,
                ),
                label: 'Person',
              ),
              NavigationDestination(
                icon: FaIcon(FontAwesomeIcons.calendar, color: AppColors.black),
                selectedIcon: FaIcon(
                  FontAwesomeIcons.calendar,
                  color: AppColors.white,
                ),
                label: 'Calender',
              ),
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: currentPageIndex,
        children: [HomePage(), HomePage(), HomePage(), HomePage()],
      ),
    );
  }
}
