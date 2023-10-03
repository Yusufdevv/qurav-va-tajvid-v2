import 'package:flutter/material.dart';
import 'package:quran_va_tajvid/utils/colors.dart';
import 'package:quran_va_tajvid/utils/styles.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    super.key,
    required this.title,
    required this.onTap,
  });
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        //     height: 50,
        child: Column(
          children: [
            Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),

              child: Text(
                title,
                style: AppTextStyles.style14w400.copyWith(fontSize: 20), textAlign: TextAlign.center,
              ),
            ),
            const Divider(
              height: 1,
              color: AppColors.c_9E9E9E,
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
