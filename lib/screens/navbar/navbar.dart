import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quran_va_tajvid/screens/navbar/favourite/favourite_screen.dart';
import 'package:quran_va_tajvid/screens/navbar/home/home_screen.dart';
import 'package:quran_va_tajvid/screens/navbar/main/main_screen.dart';
import 'package:quran_va_tajvid/screens/navbar/settings/settings_screen.dart';
import 'package:quran_va_tajvid/utils/colors.dart';
import 'package:quran_va_tajvid/utils/icons.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  List<Widget> screens = [];
  int index = 0;
  @override
  void initState() {
    screens = [
      HomeScreen(),
      MainScreen(),
      FavouriteScreen(),
      SettingsScreen(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 60,
        child: BottomNavigationBar(
          elevation: 0,
            selectedItemColor: AppColors.black,
            unselectedItemColor: AppColors.c_FAFAFA,
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors.c_3DBE3D,
            currentIndex: index,
            selectedLabelStyle: const  TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
            unselectedLabelStyle:  const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset(AppIcons.homeIcon,
                      // ignore: deprecated_member_use
                      color: AppColors.black, height: 20, width: 20),
                  icon: SvgPicture.asset(AppIcons.homeIcon,
                      height: 20, width: 20),
                  label: "Bosh sahifa"),
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset(AppIcons.mainIcon,
                      // ignore: deprecated_member_use
                      color: AppColors.black, height: 20, width: 20),
                  icon: SvgPicture.asset(AppIcons.mainIcon,
                      height: 20, width: 20),
                  label: "Ohirgilar"),
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset(AppIcons.favouriteIcon,
                      // ignore: deprecated_member_use
                      color: AppColors.black, height: 20, width: 20),
                  icon: SvgPicture.asset(AppIcons.favouriteIcon,
                      height: 20, width: 20),
                  label: "Sevimlilar"),
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset(AppIcons.settingsIcon,
                      // ignore: deprecated_member_use
                      color: AppColors.black, height: 20, width: 20),
                  icon: SvgPicture.asset(AppIcons.settingsIcon,
                      height: 20, width: 20),
                  label: "Sozlamalar")
            ]),
      ),
      body: screens[index],
    );
  }
}
