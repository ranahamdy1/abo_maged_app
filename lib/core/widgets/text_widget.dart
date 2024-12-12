import 'package:flutter/material.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';

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

  const TextWidget.bigText(
    this.text, {
    super.key,
    this.color ,
    this.overflow,
    this.textDirection,
    this.textAlign,
    this.fontSize = 18,
    this.fontWeight = FontWeight.w700,
    this.shadows,
    this.maxLines,
  });
  const TextWidget.smallText(
      this.text, {
        super.key,
        this.color ,
        this.overflow,
        this.textDirection,
        this.textAlign,
        this.fontSize = 14,
        this.fontWeight = FontWeight.w400,
        this.shadows,
        this.maxLines,
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
        this.maxLines,
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow ?? TextOverflow.ellipsis,
      textDirection: textDirection,
      textAlign: textAlign,
      maxLines: 20,
      style: TextStyle(
        color: AppColors.whiteColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
        shadows: shadows,
        fontFamily: "Almarai",
      ),
    );
  }
}
