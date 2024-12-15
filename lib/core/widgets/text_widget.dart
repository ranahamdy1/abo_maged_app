import 'package:flutter/material.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      this.text, {
        super.key,
        this.color,
        this.overflow,
        this.textDirection,
        this.textAlign,
        this.fontSize,
        this.fontWeight,
        this.shadows,
        this.maxLines,
        this.decoration,
      });
  final String text;
  final Color? color;
  final TextOverflow? overflow;
  final TextDirection? textDirection;
  final TextAlign? textAlign;
  final double? fontSize;
  final FontWeight? fontWeight;
  final List<Shadow>? shadows;
  final int? maxLines;
  final TextDecoration? decoration;

  const TextWidget.bigText(
      this.text, {
        super.key,
        this.color,
        this.overflow,
        this.textDirection,
        this.textAlign,
        this.fontSize = 15,
        this.fontWeight = FontWeight.w700,
        this.shadows,
        this.maxLines, this.decoration,
      });
  const TextWidget.smallText(
      this.text, {
        super.key,
        this.color,
        this.overflow,
        this.textDirection,
        this.textAlign,
        this.fontSize = 14,
        this.fontWeight = FontWeight.w400,
        this.shadows,
        this.maxLines, this.decoration,
      });
  const TextWidget.mediumText(
      this.text, {
        super.key,
        this.color = AppColors.mainColor,
        this.overflow,
        this.textDirection,
        this.textAlign,
        this.fontSize = 12,
        this.fontWeight = FontWeight.w700,
        this.shadows,
        this.maxLines, this.decoration,
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow ?? TextOverflow.ellipsis,
      textDirection: textDirection,
      textAlign: textAlign,
      maxLines: maxLines ?? 20,
      style: TextStyle(
        color: color ?? AppColors.whiteColor,
        fontSize: fontSize?.sp ?? 13.sp,
        fontWeight: fontWeight,
        shadows: shadows,
        fontFamily: "Almarai",
        decoration: decoration
      ),
    );
  }
}
