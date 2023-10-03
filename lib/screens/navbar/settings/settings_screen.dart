import 'package:flutter/material.dart';
import 'package:quran_va_tajvid/screens/info/info_screen.dart';
import 'package:quran_va_tajvid/screens/language/language_screen.dart';
import 'package:quran_va_tajvid/screens/navbar/settings/widgets/header_widget.dart';
import 'package:quran_va_tajvid/screens/navbar/settings/widgets/navigate_button.dart';
import 'package:quran_va_tajvid/utils/icons.dart';
import 'package:quran_va_tajvid/widgets/scaffold_with_image.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithImage(
      title: 'Sozlamalar',
      widget: Column(
        children: [
          const HeaderWidget(),
          const SizedBox(height: 10),
          NavigateButton(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LanguageScreen()));
              },
              icon: AppIcons.globeIcon,
              title: "Ilova tili"),
          NavigateButton(
              onTap: () {}, icon: AppIcons.shareIcon, title: "Ulashish"),
          NavigateButton(
              onTap: () {}, icon: AppIcons.messageIcon, title: "Eslatmalar"),
          NavigateButton(
              onTap: () {},
              icon: AppIcons.darkModeIcon,
              title: "Tungi ko’rinish",
              isDarkMode: true,),
          NavigateButton(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InfoScreen()));
              },
              icon: AppIcons.infoIcon,
              title: "Dastur haqida"),
        ],
      ),
    );
  }
}
