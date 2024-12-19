import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OurServicesWidgets extends StatelessWidget {
  const OurServicesWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: 350.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: AppColors.mainColor),
        color: AppColors.secondColor,
      ),
      child: Column(
        children: [
          Image.asset("our_servises".getPngAsset),
          Padding(
            padding: EdgeInsets.all(8.0.r),
            child: const TextWidget(
              "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحةهذا النص هو مثال لنص يمكن أن يستبدل هذا النص هو مثال لنص ",
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
