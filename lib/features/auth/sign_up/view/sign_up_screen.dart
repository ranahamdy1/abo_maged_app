import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:abo_maged_app/features/auth/sign_up/widgets/text_form_field_widget.dart';
import 'package:abo_maged_app/features/home/basket/widgets/color_border_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final phoneController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SvgPicture.asset("profile".getSvgAsset),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  SvgPicture.asset("small_splash".getSvgAsset),
                  SizedBox(height: 22.h),
                  const TextWidget.bigText("سجل دخول معنا",color: AppColors.yellowColor),
                  SizedBox(height: 33.h),
                  const Align(
                      alignment: Alignment.topRight,
                      child: TextWidget("برجاء ادخال رقم الجوال لتفعيل الحساب"),
                  ),
                  SizedBox(height: 12.h),
                  PhoneInputField(phoneController: phoneController,),
                  SizedBox(height: 44.h),
                  ColorBorderWidget(
                    child: Container(
                      height: 60.h,
                      width: 368.w,
                      decoration: BoxDecoration(
                          color: AppColors.secondColor,
                          borderRadius: BorderRadius.circular(9.r),
                          border: Border.all(color: AppColors.mainColor)
                      ),
                      child: const Center(child: TextWidget("التالي",color: AppColors.whiteColor,)),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  const TextWidget("تسجيل كزائر",color: AppColors.yellowColor,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
