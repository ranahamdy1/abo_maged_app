import 'package:abo_maged_app/core/extensions/assets_widgets.dart';
import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:abo_maged_app/features/home/basket/widgets/basket_widget.dart';
import 'package:abo_maged_app/features/home/basket/widgets/color_border_widget.dart';
import 'package:abo_maged_app/features/home/basket/widgets/pay_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainBasketScreen extends StatelessWidget {
  const MainBasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 18.0.w,right: 18.0.w,left: 18.0.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              itemCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 12.0.w),
                  child: const ColorBorderWidget(child: BasketWidget()),
                );
              },
            ),
            const Align(
              alignment: Alignment.topRight,
              child: TextWidget("عنوان التوصيل",color: AppColors.whiteColor),
            ),
            SizedBox(height: 9.h),
            ColorBorderWidget(
              child: Container(
                height: 56,
                width: 368,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.whiteColor)
                ),
                child: Row(
                  children: [
                    9.wSize,
                    const Icon(Icons.location_on,color: AppColors.yellowColor,),
                    3.wSize,
                    const TextWidget("المنزل",color: AppColors.whiteColor,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 14.h),
            const Align(
              alignment: Alignment.topRight,
              child: TextWidget("تايخ التوصيل",color: AppColors.whiteColor),
            ),
            SizedBox(height: 9.h),
            SizedBox(
              height: 77.h,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(7.0.w),
                    child: ColorBorderWidget(
                      child: Container(
                        height: 63,
                        width: 77,
                        decoration: BoxDecoration(
                            color: AppColors.secondColor,
                            borderRadius: BorderRadius.circular(9),
                            border: Border.all(color: AppColors.secondColor)
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextWidget("اليوم",color: AppColors.whiteColor,),
                            TextWidget("21أغسطس",color: AppColors.whiteColor,)
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 14.h),
            const Align(
              alignment: Alignment.topRight,
              child: TextWidget("وقت التوصيل",color: AppColors.whiteColor),
            ),
            SizedBox(height: 9.h),
            SizedBox(
              height: 42.h,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(3.0.w),
                    child: ColorBorderWidget(
                      child: Container(
                        height: 42,
                        width: 96,
                        decoration: BoxDecoration(
                            color: AppColors.secondColor,
                            borderRadius: BorderRadius.circular(9),
                            border: Border.all(color: AppColors.secondColor)
                        ),
                        child: const Center(child: TextWidget("فترة الصباح",color: AppColors.whiteColor,)),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 14.h),
            const Align(
              alignment: Alignment.topRight,
              child: TextWidget("طريقة الدفع",color: AppColors.whiteColor),
            ),
            SizedBox(height: 9.h),
            const ColorBorderWidget(child: PayWidget(image: 'pay1', text: "الدفع عند الاستلام",)),
            SizedBox(height: 9.h),
            const ColorBorderWidget(child: PayWidget(image: 'pay1', text: "دفع اونلاين",)),
            SizedBox(height: 9.h),
            ColorBorderWidget(
              child: Container(
                height: 60,
                width: 368,
                decoration: BoxDecoration(
                    color: AppColors.secondColor,
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(color: AppColors.mainColor)
                ),
                child: Row(
                  children: [
                    SizedBox(width: 9.w,),
                    Image.asset("tabby".getPngAsset),
                    SizedBox(width: 9.w,),
                    const TextWidget("دفع عن طريق تابي",color: AppColors.whiteColor,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 9.h),
            ColorBorderWidget(
              child: Container(
                height: 60,
                width: 368,
                decoration: BoxDecoration(
                    color: AppColors.secondColor,
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(color: AppColors.mainColor)
                ),
                child: Row(
                  children: [
                    SizedBox(width: 9.w,),
                    Image.asset("tammara".getPngAsset),
                    SizedBox(width: 9.w,),
                    const TextWidget("دفع عن طريق تمارة",color: AppColors.whiteColor,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 14.h),
            const Align(
              alignment: Alignment.topRight,
              child: TextWidget("كود الخصم",color: AppColors.whiteColor),
            ),
            SizedBox(height: 9.h),
            Container(
              height: 60,
              width: 368,
              decoration: BoxDecoration(
                  color: AppColors.secondColor,
                  borderRadius: BorderRadius.circular(9),
                  border: Border.all(color: AppColors.mainColor)
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0.w),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget("كود الخصم",color: AppColors.yellowColor,),
                    TextWidget("تطبيق",color: AppColors.whiteColor,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 14.h),
            const Align(
              alignment: Alignment.topRight,
              child: TextWidget("ملاحظات",color: AppColors.whiteColor),
            ),
            SizedBox(height: 9.h),
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.secondColor,
                hintText: "اكتب ملاحظاتك هنا..........",
                hintStyle: const TextStyle(
                  color: AppColors.whiteColor,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: const BorderSide(color: AppColors.yellowColor),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: const BorderSide(color: AppColors.mainColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: const BorderSide(color: AppColors.yellowColor),
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 16.h,
                  horizontal: 12.w,
                ),
              ),
              maxLines: null,
              minLines: 3,
              style: const TextStyle(color: AppColors.whiteColor),
            ),
            SizedBox(height: 14.h),
            const Align(
              alignment: Alignment.topRight,
              child: TextWidget("مجموع الطلب",color: AppColors.whiteColor),
            ),
            SizedBox(height: 9.h),
            ColorBorderWidget(
              child: Container(
                height: 60,
                width: 368,
                decoration: BoxDecoration(
                    color: AppColors.secondColor,
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(color: AppColors.mainColor)
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0.w),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget("اجمالي الطلب",color: AppColors.whiteColor,),
                      TextWidget("240 ريال",color: AppColors.whiteColor,),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 14.h),
            ColorBorderWidget(
              child: Container(
                height: 60,
                width: 368,
                decoration: BoxDecoration(
                    color: AppColors.secondColor,
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(color: AppColors.mainColor)
                ),
                child: const Center(child: TextWidget("استمرار",color: AppColors.whiteColor,)),
              ),
            ),
            SizedBox(height: 33.h),
          ],
        ),
      ),
    );
  }
}
