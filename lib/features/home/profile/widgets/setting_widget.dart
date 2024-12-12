import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SettingWidget extends StatelessWidget {
  const SettingWidget({super.key, required this.image, required this.text, this.icon});
  final String image;
  final String text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 9.w),
        SvgPicture.asset(image.getSvgAsset),
        SizedBox(width: 9.w),
        TextWidget(text,color: AppColors.whiteColor,),
        const Spacer(),
        Icon(icon,color: AppColors.whiteColor,size: 16,),
      ],
    );
  }
}
