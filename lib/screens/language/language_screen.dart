import 'package:flutter/material.dart';
import 'package:quran_va_tajvid/screens/language/widgets/language_button.dart';
import 'package:quran_va_tajvid/widgets/scaffold_with_image.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithImage(
      title: "Ilova tili",
      widget: Column(
        children: [
          LanguageButton(title: "O’ZBEK(LOTIN)", onTap: () {}),
          LanguageButton(title: "ENGLISH", onTap: () {}),
          LanguageButton(title: "ЎЗБЕК(КИРИЛЛ)", onTap: () {}),
          LanguageButton(title: "РУССКИЙ", onTap: () {}),
        ],
      ),
    );
  }
}
