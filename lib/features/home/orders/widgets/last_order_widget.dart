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
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 122.h,
            width: 368.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.whiteColor)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TextWidget("طلب رقم",color: AppColors.yellowColor,),
                      Container(
                        height: 25.h,
                        width: 86.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: AppColors.whiteColor),
                            color: AppColors.secondColor
                        ),
                        child: const Center(child: TextWidget("عرض التفاصيل",color: AppColors.whiteColor,)),
                      )
                    ],
                  ),
                  const TextWidget("23/8/2023",color: AppColors.whiteColor,),
                  SizedBox(
                    height: 46.h,
                    width: 46.w,
                    child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Image.asset("order".getPngAsset);
                      },
                    ),
                  ),
                  const Row(
                    children: [
                      TextWidget.mediumText("عدد العناصر   ",color: AppColors.yellowColor,),
                      TextWidget("3",color: AppColors.whiteColor,),
                      Spacer(),
                      TextWidget.mediumText("الاجمالي    ",color: AppColors.yellowColor,),
                      TextWidget("240 ريال",color: AppColors.whiteColor,),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
