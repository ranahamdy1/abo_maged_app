import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorBorderWidget extends StatefulWidget {
  final Widget child;
  const ColorBorderWidget({super.key, required this.child});

  @override
  State<ColorBorderWidget> createState() => _ColorBorderWidgetState();
}

class _ColorBorderWidgetState extends State<ColorBorderWidget> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isTapped = !isTapped; // Toggle the border color on tap
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.secondColor,
          borderRadius: BorderRadius.circular(9),
          border: Border.all(
            color: isTapped ? AppColors.yellowColor : AppColors.mainColor,
          ),
        ),
        child: widget.child,
      ),
    );
  }
}