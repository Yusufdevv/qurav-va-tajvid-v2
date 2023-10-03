import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quran_va_tajvid/utils/colors.dart';
import 'package:quran_va_tajvid/utils/styles.dart';

class NavigateButton extends StatefulWidget {
  const NavigateButton({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.isDarkMode = false,
  });
  final String icon;
  final String title;
  final VoidCallback onTap;
  final bool isDarkMode;

  @override
  State<NavigateButton> createState() => _NavigateButtonState();
}

class _NavigateButtonState extends State<NavigateButton> {
  bool switchValue=false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: SizedBox(
           //  height: 50,
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: SvgPicture.asset(
                            widget.icon,
                            width: 25,
                            height: 25,
                          ),
                        ),
                        Text(
                          widget.title,
                          style:
                              AppTextStyles.style14w400.copyWith(fontSize: 20),
                        ),
                      ],
                    ),
                    widget.isDarkMode
                        ? Switch(
                            value: switchValue,
                            onChanged: (value) {
                              setState(() {
                                switchValue=value;
                              });
                            },
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
            ),
            const Divider(
              height: 1,
              color: AppColors.c_9E9E9E,
              thickness: 1.2,
            ),
          ],
        ),
      ),
    );
  }
}
