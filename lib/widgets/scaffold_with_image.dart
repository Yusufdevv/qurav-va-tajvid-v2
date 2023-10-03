import 'package:flutter/material.dart';
import 'package:quran_va_tajvid/utils/colors.dart';
import 'package:quran_va_tajvid/utils/icons.dart';
import 'package:quran_va_tajvid/widgets/global_appbar.dart';

class ScaffoldWithImage extends StatelessWidget {
  const ScaffoldWithImage({
    super.key,
    required this.title,
    required this.widget,
    this.actionsWidget = const SizedBox(),
  });
  final Widget widget;
  final String title;
  final Widget actionsWidget;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c_EEEEEE,
      appBar: GlobalAppbar(title: title, actionsWidget: actionsWidget),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppIcons.background,
            ),
          ),
        ),
        child: widget,
      ),
    );
  }
}
