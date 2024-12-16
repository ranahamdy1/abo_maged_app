import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/utils/app_routes.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:abo_maged_app/features/home/basket/widgets/color_border_widget.dart';
import 'package:abo_maged_app/features/home/main_navigation/main_navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({super.key});

  final codeController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
        fontSize: 20,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.secondColor),
      borderRadius: BorderRadius.circular(5),
    ),
  );


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
                  const TextWidget.bigText("كود التحقق",color: AppColors.yellowColor),
                  SizedBox(height: 33.h),
                  const Align(
                    alignment: Alignment.topRight,
                    child: TextWidget("برجاء ادخال الكود المرسل إليك"),
                  ),
                  SizedBox(height: 12.h),
                  Form(
                    key: formKey,
                    child: Pinput(
                        controller: codeController,
                        length: 4,
                        obscuringCharacter: '•',
                        defaultPinTheme: defaultPinTheme,
                        autofocus: true,
                        focusedPinTheme: defaultPinTheme.copyWith(
                          decoration: defaultPinTheme.decoration?.copyWith(
                            border: Border.all(
                              color: AppColors.secondColor,
                              width: 2,
                            ),
                          ),
                        ),
                        submittedPinTheme: defaultPinTheme.copyWith(
                          decoration: defaultPinTheme.decoration?.copyWith(
                            color: AppColors.secondColor,
                          ),
                        ),
                        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                        showCursor: true,
                        onCompleted: (pin) {
                          print(pin);
                        }),
                  ),
                  SizedBox(height: 44.h),
                  ColorBorderWidget(
                    child: InkWell(
                      onTap: (){
                        AppRoutes.routeTo(context, const MainNavigationScreen());
                      },
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
                  ),
                  SizedBox(height: 12.h),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
