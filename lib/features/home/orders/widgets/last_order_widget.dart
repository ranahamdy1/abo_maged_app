import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LastOrderWidget extends StatelessWidget {
  const LastOrderWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.all(8.0.w),
          child: Container(
            height: 140.h,
            width: 368.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: AppColors.babyMainColor),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TextWidget("طلب رقم", color: AppColors.yellowColor),
                      Container(
                        height: 25.h,
                        width: 86.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.r),
                          border: Border.all(color: AppColors.babyMainColor),
                          color: AppColors.secondColor,
                        ),
                        child: Center(
                          child: TextWidget(
                            "عرض التفاصيل",
                            color: AppColors.whiteColor,
                            fontSize: 9.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const TextWidget(
                    "23/8/2023",
                    color: AppColors.whiteColor,
                  ),
                  SizedBox(
                    height: 46.h,
                    child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 46.h,
                          width: 46.w,
                          child: Image.asset("order".getPngAsset),
                        );
                      },
                    ),
                  ),
                  const Row(
                    children: [
                      TextWidget.mediumText("عدد العناصر   ",
                          color: AppColors.yellowColor),
                      TextWidget("3", color: AppColors.whiteColor),
                      Spacer(),
                      TextWidget.mediumText("الاجمالي    ",
                          color: AppColors.yellowColor),
                      TextWidget("240 ريال", color: AppColors.whiteColor),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
