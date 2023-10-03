import 'package:flutter/material.dart';
import 'package:quran_va_tajvid/utils/icons.dart';
import 'package:quran_va_tajvid/widgets/data_item.dart';

class QuranLessons extends StatelessWidget {
  const QuranLessons({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      physics: const BouncingScrollPhysics(),
      children: List.generate(
        5,
        (index) => const DataItem(image: AppIcons.quran),
      ),
    ); 
  }
}