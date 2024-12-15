import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/utils/app_routes.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:abo_maged_app/features/home/orders/widgets/first_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OrederDetailsScreen extends StatelessWidget {
  const OrederDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: const TextWidget.bigText(" تفاصيل الطلب "),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.all(5.0.w),
          child: GestureDetector(
            onTap: () {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 288.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: AppColors.babyMainColor),
                ),
                child: Column(
                  children: [
                    const FirstContainerWidget(text1: 'العنوان', text2: '12,العليا شارع العليا',),
                    Padding(
                      padding: EdgeInsets.all(8.0.w),
                      child: const Divider(color: AppColors.babyMainColor),
                    ),
                    const FirstContainerWidget(text1: 'العنوان', text2: '12,العليا شارع العليا',),
                    Padding(
                      padding: EdgeInsets.all(8.0.w),
                      child: const Divider(color: AppColors.babyMainColor),
                    ),
                    const FirstContainerWidget(text1: 'العنوان', text2: '12,العليا شارع العليا',),
                    Padding(
                      padding: EdgeInsets.all(8.0.w),
                      child: const Divider(color: AppColors.babyMainColor),
                    ),
                    const FirstContainerWidget(text1: 'العنوان', text2: '12,العليا شارع العليا',),
                    Padding(
                      padding: EdgeInsets.all(8.0.w),
                      child: const Divider(color: AppColors.babyMainColor),
                    ),
                    const FirstContainerWidget(text1: 'العنوان', text2: '12,العليا شارع العليا',),
                  ],
                ),
              ),
              SizedBox(height: 12.h),
              const Align(
                alignment: Alignment.topRight,
                child: TextWidget("ملخص الطلب"),
              ),
              SizedBox(height: 9.h),
              Container(
                height: 863.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.secondColor,
                  border: Border.all(color: AppColors.babyMainColor),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0.w),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 87.h,
                            width: 104.w,
                            child: Image.asset("order_details".getPngAsset),
                          ),
                          SizedBox(width: 8.w,),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget.mediumText("مفروم غنم", color: AppColors.whiteColor),
                                TextWidget(
                                  "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن أن يستبدل هذا ",
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(14.0.w),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget.bigText("مفروم نعيمي"),
                            TextWidget.mediumText("240 ريال",color: AppColors.whiteColor,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(14.0.w),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget.bigText("نعيمي هيرفي صغير"),
                            TextWidget.mediumText("240 ريال",color: AppColors.whiteColor,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(14.0.w),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget.bigText("تقطيع"),
                            TextWidget.mediumText("240 ريال",color: AppColors.whiteColor,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(14.0.w),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget.bigText("التغليف تكييس"),
                            TextWidget.mediumText("240 ريال",color: AppColors.whiteColor,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(14.0.w),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget.bigText("بدون لية"),
                            TextWidget.mediumText("240 ريال",color: AppColors.whiteColor,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0.w),
                        child: const Divider(color: AppColors.babyMainColor,),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 87.h,
                            width: 104.w,
                            child: Image.asset("order_details".getPngAsset),
                          ),
                          SizedBox(width: 8.w,),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget.mediumText("مفروم غنم", color: AppColors.whiteColor),
                                TextWidget(
                                  "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن أن يستبدل هذا ",
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(14.0.w),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget.bigText("مفروم نعيمي"),
                            TextWidget.mediumText("240 ريال",color: AppColors.whiteColor,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(14.0.w),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget.bigText("مفروم نعيمي"),
                            TextWidget.mediumText("240 ريال",color: AppColors.whiteColor,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(14.0.w),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget.bigText("مفروم نعيمي"),
                            TextWidget.mediumText("240 ريال",color: AppColors.whiteColor,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(14.0.w),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget.bigText("مفروم نعيمي"),
                            TextWidget.mediumText("240 ريال",color: AppColors.whiteColor,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(14.0.w),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget.bigText("مفروم نعيمي"),
                            TextWidget.mediumText("240 ريال",color: AppColors.whiteColor,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0.w),
                        child: const Divider(color: AppColors.babyMainColor,),
                      ),
                      Padding(
                        padding: EdgeInsets.all(14.0.w),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget.bigText("مجموع الطلب"),
                            TextWidget.mediumText("240 ريال",color: AppColors.whiteColor,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(14.0.w),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget.bigText("رسوم التوصيل"),
                            TextWidget.mediumText("240 ريال",color: AppColors.whiteColor,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(14.0.w),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget.bigText("الاجمالي",color: AppColors.yellowColor,),
                            TextWidget.mediumText("240 ريال",color: AppColors.yellowColor,)
                          ],
                        ),
                      ),
                      SizedBox(height: 5.h),
                      const TextWidget("جميع الاسعار تشمل 15%  ضريبة القيمة المضاقة")
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              Container(
                height: 185.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: AppColors.whiteColor)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const TextWidget("جميع الحقوق محفوظة لشركة ملحمة ابو ماجد 2023"),
                    Image.asset("company".getPngAsset),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const TextWidget("الرقم الضريبي :"),
                        SizedBox(width: 6.h),
                        const TextWidget("3209024152700009"),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 44.h),
            ],
          ),
        ),
      ),
    );
  }
}
