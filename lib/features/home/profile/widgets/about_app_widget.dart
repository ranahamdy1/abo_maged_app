import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AboutAppWidget extends StatelessWidget {
  const AboutAppWidget({super.key, required this.smallText, required this.bigText, required this.image});
  final String image;
  final String smallText;
  final String bigText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 226.h,
      width: 583.w,
      decoration: BoxDecoration(
          color: AppColors.secondColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.whiteColorWithOpacity)
      ),
      child: Column(
        children: [
          SizedBox(
            height: 105.h,
            width: 96.w,
            child: SvgPicture.asset(image.getSvgAsset),
          ),
          TextWidget(smallText),
          Padding(
            padding: EdgeInsets.all(18.0.w),
            child:  TextWidget(
              bigText,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
