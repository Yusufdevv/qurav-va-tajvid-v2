import 'package:flutter/material.dart';
import 'package:quran_va_tajvid/utils/colors.dart';
import 'package:quran_va_tajvid/utils/icons.dart';
import 'package:quran_va_tajvid/utils/styles.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 16),
        Image.asset(
          AppIcons.logo,
          width: 80,
          height: 80,
        ),
        const SizedBox(height: 10),
        Text(
          "Qur’on va Tajvid",
          style: AppTextStyles.style14w400.copyWith(fontSize: 25),
        ),
        const SizedBox(height: 6),
        Text(
          "1.1.0 talqin",
          style: AppTextStyles.style14w400.copyWith(fontSize: 15),
        ),
        const SizedBox(height: 8),
        const Divider(
          height: 0,
          thickness: 3,
          color: AppColors.c_3DBE3D,
        ),
      ],
    );
  }
}
