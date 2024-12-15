import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/utils/app_routes.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:abo_maged_app/features/home/basket/widgets/color_border_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("product_details_screen".getPngAsset),
                Padding(
                  padding: EdgeInsets.all(25.0.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: (){
                            AppRoutes.pop(context);
                          },
                          child: SvgPicture.asset("next".getSvgAsset)),
                      SvgPicture.asset("favourite".getSvgAsset),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(18.0.w),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget.mediumText("نعيمي",color: AppColors.whiteColor,),
                      TextWidget("1502 ريال سعودي")
                    ],
                  ),
                  SizedBox(height: 12.h),
                  TextWidget(
                      "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحةهذا النص هو مثال لنص يمكن أن يستبدل هذا النص هو مثال لنص ",
                      maxLines: 5,
                      fontSize: 12,
                    color: AppColors.whiteColorWithOpacity,
                  ),
                  SizedBox(height: 12.h),
                  Row(
                    children: [
                      SvgPicture.asset("calories".getSvgAsset),
                      SizedBox(width: 5.w),
                      const TextWidget("السعرات الحرارية"),
                      const Spacer(),
                      const TextWidget("0 لكل 100 جرام",color: AppColors.yellowColor,)
                    ],
                  ),
                  SizedBox(height: 12.h),
                  const Align(
                      alignment: Alignment.topRight,
                      child: TextWidget.mediumText("الحجم",color: AppColors.whiteColor),
                  ),
                  SizedBox(height: 12.h),
                  Row(
                    children: [
                      ColorBorderWidget(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: AppColors.secondColor,
                          ),
                          child: const Center(
                            child: TextWidget("نعيمي هيرفي لباني"),
                          ),
                        ),
                      ),
                      SizedBox(width: 9.w),
                      ColorBorderWidget(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: AppColors.secondColor,
                          ),
                          child: const Center(
                            child: TextWidget("نعيمي هيرفي لباني"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 9.h),
                  Row(
                    children: [
                      ColorBorderWidget(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 8.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: AppColors.secondColor,
                          ),
                          child: const Center(
                            child: TextWidget(" جذع وسط ( يجزئ العقيقة )"),
                          ),
                        ),
                      ),
                      SizedBox(width: 9.w),
                      ColorBorderWidget(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: AppColors.secondColor,
                          ),
                          child: const Center(
                            child: TextWidget("نعيمي هرفي وسط "),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 9.h),
                  Row(
                    children: [
                      ColorBorderWidget(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: AppColors.secondColor,
                          ),
                          child: const Center(
                            child: TextWidget("نعيمي هيرفي لباني"),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 12.h),
                  const Align(
                    alignment: Alignment.topRight,
                    child: TextWidget.mediumText("التقطيع",color: AppColors.whiteColor),
                  ),
                  SizedBox(height: 12.h),
                  Row(
                    children: [
                      ColorBorderWidget(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: AppColors.secondColor,
                          ),
                          child: const Center(
                            child: TextWidget("تقطيع شوربة"),
                          ),
                        ),
                      ),
                      SizedBox(width: 9.w),
                      ColorBorderWidget(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: AppColors.secondColor,
                          ),
                          child: const Center(
                            child: TextWidget("أنصاف - نصفين بالطول"),
                          ),
                        ),
                      ),
                      SizedBox(width: 9.w),
                      ColorBorderWidget(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: AppColors.secondColor,
                          ),
                          child: const Center(
                            child: TextWidget("أرباع"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 9.h),
                  Row(
                    children: [
                      ColorBorderWidget(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: AppColors.secondColor,
                          ),
                          child: const Center(
                            child: TextWidget("أكياس فاكيوم - مفرغة من الهواء"),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 12.h),
                  const Align(
                    alignment: Alignment.topRight,
                    child: TextWidget.mediumText("بدون",color: AppColors.whiteColor),
                  ),
                  SizedBox(height: 12.h),
                  Row(
                    children: [
                      ColorBorderWidget(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: AppColors.secondColor,
                          ),
                          child: const Center(
                            child: TextWidget("بدون راس"),
                          ),
                        ),
                      ),
                      SizedBox(width: 9.w),
                      ColorBorderWidget(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: AppColors.secondColor,
                          ),
                          child: const Center(
                            child: TextWidget("أنصاف - نصفين بالطول"),
                          ),
                        ),
                      ),
                      SizedBox(width: 9.w),
                      ColorBorderWidget(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: AppColors.secondColor,
                          ),
                          child: const Center(
                            child: TextWidget("أرباع"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 9.h),
                  Row(
                    children: [
                      ColorBorderWidget(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: AppColors.secondColor,
                          ),
                          child: const Center(
                            child: TextWidget("بدون راس"),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 22.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 44.h,
                        width: 44.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: AppColors.secondColor,
                        ),
                        child: const Icon(Icons.add, color: AppColors.whiteColor),
                      ),
                      SizedBox(width: 6.w),
                      const TextWidget("1", color: AppColors.whiteColor,fontSize: 28,),
                      SizedBox(width: 6.w),
                      Container(
                        height: 44.h,
                        width: 44.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: AppColors.secondColor,
                        ),
                        child: const Icon(Icons.remove, color: AppColors.whiteColor),
                      ),
                      SizedBox(width: 6.w),
                      Container(
                        height: 44.h,
                        width: 188.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: AppColors.secondColor,
                        ),
                        child: const Center(child: TextWidget("أضف الي السلة")),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
