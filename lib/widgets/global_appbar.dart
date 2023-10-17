import 'package:flutter/material.dart';
import 'package:quran_va_tajvid/utils/colors.dart';
import 'package:quran_va_tajvid/utils/styles.dart';

class GlobalAppbar extends StatelessWidget implements PreferredSize {
  const GlobalAppbar({
    super.key,
    required this.title,
    required this.actionsWidget,
  });
  final String title;
  final Widget actionsWidget;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.c_3DBE3D,
      elevation: 0,
      title: Text(
        title,
        style: AppTextStyles.style14w400
            .copyWith(fontSize: 25, color: AppColors.c_FAFAFA,),
      ),
      actions: [
        actionsWidget,
      ],
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size(double.infinity, 56);
}
