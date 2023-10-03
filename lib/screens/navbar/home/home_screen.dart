import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quran_va_tajvid/screens/notifications/notifications_screen.dart';
import 'package:quran_va_tajvid/screens/tabs/arabic_language/arabic_language.dart';
import 'package:quran_va_tajvid/screens/tabs/quran_lessons/quran_lessons.dart';
import 'package:quran_va_tajvid/screens/tabs/tajweed_lessons/tajweed_lessons.dart';
import 'package:quran_va_tajvid/utils/icons.dart';
import 'package:quran_va_tajvid/utils/styles.dart';
import 'package:quran_va_tajvid/widgets/scaffold_with_image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithImage(
      title: 'Qur’on va Tajvid',
      actionsWidget: IconButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NotificationsScreen(),
              ));
        },
        icon: SvgPicture.asset(AppIcons.notificationIcon),
      ),
      widget: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(
              physics: const BouncingScrollPhysics(),
              indicatorSize:TabBarIndicatorSize.label,
              isScrollable: true,
              tabs: [
                Text(
                  "Tajvid darslari",
                  style: AppTextStyles.style16w700.copyWith(fontSize: 25),
                ),
                Text(
                  "Qur’on darslari",
                  style: AppTextStyles.style16w700.copyWith(fontSize: 25),
                ),
                Text(
                  "Arab tilii",
                  style: AppTextStyles.style16w700.copyWith(fontSize: 25),
                ),
              ],
            ),
            const Expanded(
              child: TabBarView(children: [
                TajweedLessons(),
                QuranLessons(),
                ArabicLanguage()
              ]),
            )
          ],
        ),
      ),
    );
  }
}
