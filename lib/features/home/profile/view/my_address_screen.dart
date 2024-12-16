import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/utils/app_routes.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MyAddressScreen extends StatelessWidget {
  const MyAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: const TextWidget.bigText("عناويني"),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.all(5.0.w),
          child: GestureDetector(
            onTap: (){
              AppRoutes.pop(context);
            },
            child: SizedBox(
              height: 40.h,
              width: 40.w,
              child: SvgPicture.asset("next".getSvgAsset),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(18.0.w),
        child: Column(
          children: [
            const Align(
                alignment: Alignment.topRight,
                child: TextWidget("اضف  عنوان   جديد"),
            ),
            SizedBox(height: 18.h),
            Container(
              height: 178.h,
              width: 368.w,
              decoration: BoxDecoration(
                color: AppColors.secondColor,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.location_on,color: AppColors.yellowColor,),
                        SizedBox(width: 9.w),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget.bigText("المنزل 1"),
                            TextWidget("العنوان الذي تم اضافته من خلالك هنا")
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 38.h,
                          width: 124.w,
                          decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: const Center(child: TextWidget.bigText("تعديل ")),
                        ),
                        Container(
                          height: 38.h,
                          width: 124.w,
                          decoration: BoxDecoration(
                            color: AppColors.yellowColor,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: const Center(child: TextWidget.bigText("ازالة ")),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
