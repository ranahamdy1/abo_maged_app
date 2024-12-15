import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BasketWidget extends StatelessWidget {
  const BasketWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 119.h,
      width: 368.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: AppColors.secondColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0.w),
            child: Image.asset(
              "basket_image".getPngAsset,
              width: 100.w,
              height: 100.h,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget.bigText("مفروم غنم", color: AppColors.whiteColor),
                      Icon(Icons.clear, color: AppColors.whiteColor),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  TextWidget.smallText(
                    "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن أن يستبدل هذا",
                    color: AppColors.whiteColorWithOpacity,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    fontSize: 9.sp,
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.r),
                          color: AppColors.mainColor,
                        ),
                        child: const Icon(Icons.remove, color: AppColors.whiteColor),
                      ),
                      SizedBox(width: 6.w),
                      const TextWidget("1", color: AppColors.whiteColor),
                      SizedBox(width: 6.w),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.r),
                          color: AppColors.mainColor,
                        ),
                        child: const Icon(Icons.add, color: AppColors.whiteColor),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
