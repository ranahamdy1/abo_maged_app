import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/utils/app_routes.dart';
import 'package:abo_maged_app/core/widgets/custom_text_form_feild.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:abo_maged_app/features/home/basket/widgets/color_border_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MyDataScreen extends StatelessWidget {
  MyDataScreen({super.key});

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: const TextWidget.bigText("بياناتي"),
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
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(18.0.w),
            child: Column(
              children: [
                Image.asset("profile_image".getPngAsset),
                const TextWidget.bigText("Asmaa Ali", color: AppColors.whiteColor),
                const TextWidget.bigText("+9664323254", color: AppColors.whiteColor),
                SizedBox(height: 18.h),
                const Align(
                    alignment: Alignment.topRight,
                    child: TextWidget("الاسم"),
                ),
                SizedBox(height: 12.h),
                CustomTextFormField(
                  hintText: '',
                  kbType: TextInputType.name,
                  controller: controller,
                  onChanged: (value) {  },
                ),
                SizedBox(height: 18.h),
                const Align(
                    alignment: Alignment.topRight,
                    child: TextWidget("البريد الإلكتروني"),
                ),
                SizedBox(height: 12.h),
                CustomTextFormField(
                  hintText: '',
                  kbType: TextInputType.emailAddress,
                  controller: controller,
                  onChanged: (value) {  },
                ),
                SizedBox(height: 18.h),
                const Align(
                    alignment: Alignment.topRight,
                    child: TextWidget("الجنس"),
                ),
                SizedBox(height: 12.h),
                CustomTextFormField(
                  hintText: '',
                  kbType: TextInputType.name,
                  controller: controller,
                  onChanged: (value) {  },
                ),
                SizedBox(height: 18.h),
                const Align(
                    alignment: Alignment.topRight,
                    child: TextWidget("العمر"),
                ),
                SizedBox(height: 12.h),
                CustomTextFormField(
                  hintText: '',
                  kbType: TextInputType.number,
                  controller: controller,
                  onChanged: (value) {  },
                ),
                SizedBox(height: 18.h),
                ColorBorderWidget(
                  child: InkWell(
                    onTap: (){
                      //AppRoutes.routeTo(context, const MainNavigationScreen());
                    },
                    child: Container(
                      height: 60.h,
                      width: 368.w,
                      decoration: BoxDecoration(
                          color: AppColors.secondColor,
                          borderRadius: BorderRadius.circular(9.r),
                          border: Border.all(color: AppColors.mainColor)
                      ),
                      child: const Center(child: TextWidget("حفظ البيانات",color: AppColors.whiteColor,)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
