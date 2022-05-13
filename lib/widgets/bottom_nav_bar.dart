import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app_ui/pages/admin_profile_page.dart';
import 'package:hotel_booking_app_ui/pages/home_page.dart';
import 'package:hotel_booking_app_ui/pages/hotel_catalogue_page.dart';
import 'package:hotel_booking_app_ui/widgets/bottom_nav_item.dart';
import 'package:unicons/unicons.dart';

Widget buildBottomNavBar(int currIndex, Size size, bool isDarkMode) {
  return BottomNavigationBar(
    iconSize: size.width * 0.07,
    elevation: 0,
    selectedLabelStyle: const TextStyle(fontSize: 0),
    unselectedLabelStyle: const TextStyle(fontSize: 0),
    currentIndex: currIndex,
    backgroundColor: const Color(0x00ffffff),
    type: BottomNavigationBarType.fixed,
    selectedItemColor: isDarkMode ? Colors.red : Colors.black,
    unselectedItemColor: const Color(0xffa12222),
    onTap: (value) {
      if (value != currIndex) {
        if (value == 0) {
          Get.off(() => HomePage());
        } else if (value == 1) {
          Get.off(() => HotelCataloguePage());
        } else if (value == 3) {
          Get.off(() => AdminProfilePage());
        }
      }
    },
    items: [
      buildBottomNavItem(
        UniconsLine.home,
        isDarkMode,
        size,
      ),
      buildBottomNavItem(
        UniconsLine.map,
        isDarkMode,
        size,
      ),
      buildBottomNavItem(
        UniconsLine.store,
        isDarkMode,
        size,
      ),
      buildBottomNavItem(
        UniconsLine.user,
        isDarkMode,
        size,
      ),
    ],
  );
}
