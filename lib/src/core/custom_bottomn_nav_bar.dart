import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:untitled/src/downloads_screen.dart';
import 'package:untitled/src/Book%20management/presentation/view/screens/home_screen.dart';
import 'package:untitled/src/profile_screen.dart';
import 'package:untitled/src/core/utils/app_colors.dart';
import 'package:untitled/src/core/utils/assets.dart';
import 'package:untitled/src/social%20media/view/screen/social_media_screen.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  List<Widget> buildScreens() {
    return [
      HomeScreen(),
      SocialMediaScreen(),
      DownloadsScreen(),
      ProfileScreen(),
    ];
  }

  int _selectedIndex = 0; // Track selected index

  PersistentTabController controller = PersistentTabController(initialIndex: 0);

  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          AssetsData.homeIcon,
          color: _selectedIndex == 0 ? Colors.white : Colors.black,
        ),
        title: _selectedIndex == 0 ? "Home" : null,
        activeColorPrimary: AppColors.primary,
        activeColorSecondary: Colors.white,
        onPressed: (context) {
          setState(() {
            _selectedIndex = 0;
          });
          controller.jumpToTab(0);
        },
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          AssetsData.socialMediaIcon,
          color: _selectedIndex == 1 ? Colors.white : Colors.black,
        ),
        title: _selectedIndex == 1 ? "Social Media" : null,
        activeColorPrimary: AppColors.cornflowerBlue,
        activeColorSecondary: Colors.white,
        onPressed: (context) {
          setState(() {
            _selectedIndex = 1;
          });
          controller.jumpToTab(1);
        },
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          AssetsData.downloadIcon,
          color: _selectedIndex == 2 ? Colors.white : Colors.black,
        ),
        title: _selectedIndex == 2 ? "Download" : null,
        activeColorPrimary: AppColors.coral,
        activeColorSecondary: Colors.white,
        onPressed: (context) {
          setState(() {
            _selectedIndex = 2;
          });
          controller.jumpToTab(2);
        },
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          "assets/User_Circle.svg",
          color: _selectedIndex == 3 ? Colors.white : Colors.black,
        ),
        title: _selectedIndex == 3 ? "Profile" : null,
        activeColorPrimary: AppColors.forestGreen,
        activeColorSecondary: Colors.white,
        onPressed: (context) {
          setState(() {
            _selectedIndex = 3;
          });
          controller.jumpToTab(3);
        },
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: controller,
      screens: buildScreens(),
      items: navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x3F000000), // Gray color with 25% opacity
            blurRadius: 4,
            offset: Offset(0, -2), // Shadow offset slightly upwards
            spreadRadius: 0,
          ),
        ],
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style10,
    );
  }
}
