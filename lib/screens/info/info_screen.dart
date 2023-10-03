import 'package:flutter/material.dart';
import 'package:quran_va_tajvid/utils/colors.dart';
import 'package:quran_va_tajvid/utils/styles.dart';
import 'package:quran_va_tajvid/widgets/scaffold_with_image.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithImage(
      title: "Dastur haqida",
      widget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '''Ushbu dastur siz azizlarga islom dini undagi amallar va\narab tilini  ilimli  va taniqli qorilar tomondan o’rgatish maqsadida tuzulgan.\n\nUmid qilamizki bu dastur orqali siz o’zingiz istagandek bilimlarga ega bo’lasiz va islom dinidagi bilimlaringizni oshirasiz. Yordamimiz tegganidan ho’rsandmiz !''',
              style: AppTextStyles.style14w400.copyWith(fontSize: 20),
               textAlign: TextAlign.start,
            ),
            Text(
              "Dasturdagi barcha video qo’llanmalar “You tube” platformasidan olingan.",
              style: AppTextStyles.style14w400
                  .copyWith(fontSize: 15, color: AppColors.c_333333),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
