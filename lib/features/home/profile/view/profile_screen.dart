import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/utils/app_routes.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:abo_maged_app/features/auth/sign_up/view/sign_up_screen.dart';
import 'package:abo_maged_app/features/home/profile/view/about_app_screen.dart';
import 'package:abo_maged_app/features/home/profile/view/common_question_screen.dart';
import 'package:abo_maged_app/features/home/profile/view/my_address_screen.dart';
import 'package:abo_maged_app/features/home/profile/view/my_data_screen.dart';
import 'package:abo_maged_app/features/home/profile/view/my_fav_screen.dart';
import 'package:abo_maged_app/features/home/profile/view/notification_screen.dart';
import 'package:abo_maged_app/features/home/profile/view/our_services_screen.dart';
import 'package:abo_maged_app/features/home/profile/view/privacy_setting_screen.dart';
import 'package:abo_maged_app/features/home/profile/view/use_rules_screen.dart';
import 'package:abo_maged_app/features/home/profile/widgets/setting_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SvgPicture.asset("profile".getSvgAsset),
            Padding(
              padding: EdgeInsets.all(18.0.w),
              child: Column(
                children: [
                  Image.asset("profile_image".getPngAsset),
                  GestureDetector(
                      onTap: (){
                        AppRoutes.routeTo(context, SignUpScreen());
                      },
                      child: const TextWidget.bigText("تسجيل الدخول", color: AppColors.whiteColor)),
                  SizedBox(height: 18.h),
                  Container(
                    height: 222.h,
                    width: 348.w,
                    decoration: BoxDecoration(
                        color: AppColors.secondColor,
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(color: AppColors.whiteColorWithOpacity)
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(18.0.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              onTap: (){
                                AppRoutes.routeTo(context, MyDataScreen());
                              },
                              child: const SettingWidget(image: 'my_data', text: 'بياناتي', icon: Icons.arrow_forward_ios)),
                          const Divider(color: AppColors.mainColor),
                          InkWell(
                              onTap: (){
                                AppRoutes.routeTo(context, const MyAddressScreen());
                              },
                              child: const SettingWidget(image: 'my_address', text: 'عناويني', icon: Icons.arrow_forward_ios)),
                          const Divider(color: AppColors.mainColor),
                          InkWell(
                              onTap: (){
                                AppRoutes.routeTo(context, const MyFavScreen());
                              },
                              child: const SettingWidget(image: 'my_fav', text: 'المفضلة', icon: Icons.arrow_forward_ios)),
                          const Divider(color: AppColors.mainColor),
                          InkWell(
                              onTap: (){
                                //AppRoutes.routeTo(context, MyDataScreen());
                              },
                              child: const SettingWidget(image: 'delete_account', text: 'حذف الحساب')),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 18.h),
                  const Align(
                    alignment: Alignment.topRight,
                    child: TextWidget.bigText("الاعدادت", color: AppColors.whiteColor),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    height: 277.h,
                    width: 348.w,
                    decoration: BoxDecoration(
                        color: AppColors.secondColor,
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(color: AppColors.whiteColorWithOpacity)
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(18.0.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SettingWidget(image: 'lang', text: 'English'),
                          const Divider(color: AppColors.mainColor),
                          InkWell(
                              onTap: (){
                                AppRoutes.routeTo(context, const NotificationScreen());
                              },
                              child: const SettingWidget(image: 'lang', text: 'الاشعارات')),
                          const Divider(color: AppColors.mainColor),
                          const SettingWidget(image: 'light', text: 'الوضع المضئ'),
                          const Divider(color: AppColors.mainColor),
                          const SettingWidget(image: 'main_color', text: 'الوضع الاساسي'),
                          const Divider(color: AppColors.mainColor),
                          const SettingWidget(image: 'dark', text: 'الوضع الليلي'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 18.h),
                  const Align(
                    alignment: Alignment.topRight,
                    child: TextWidget.bigText("المساعدة والدعم", color: AppColors.whiteColor),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    height: 333.h,
                    width: 348.w,
                    decoration: BoxDecoration(
                        color: AppColors.secondColor,
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(color: AppColors.whiteColorWithOpacity)
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(18.0.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SettingWidget(image: 'lang', text: 'تواصل معنا عبر واتساب'),
                          const Divider(color: AppColors.mainColor),
                          InkWell(
                              onTap: (){
                                AppRoutes.routeTo(context, const CommonQuestionScreen());
                              },
                              child: const SettingWidget(image: 'light', text: 'الاسئلة الشائعة', icon: Icons.arrow_forward_ios)),
                          const Divider(color: AppColors.mainColor),
                          InkWell(
                              onTap: (){
                                AppRoutes.routeTo(context, const AboutAppScreen());
                              },
                              child: const SettingWidget(image: 'light', text: 'عن التطبيق', icon: Icons.arrow_forward_ios)),
                          const Divider(color: AppColors.mainColor),
                          InkWell(
                              onTap: (){
                                AppRoutes.routeTo(context, const OurServicesScreen());
                              },
                              child: const SettingWidget(image: 'dark', text: 'خدماتنا', icon: Icons.arrow_forward_ios)),
                          const Divider(color: AppColors.mainColor),
                          const SettingWidget(image: 'main_color', text: 'قيم التطبيق'),
                          const Divider(color: AppColors.mainColor),
                          const SettingWidget(image: 'dark', text: 'مشاركة التطبيق'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    height: 66.h,
                    width: 348.w,
                    decoration: BoxDecoration(
                        color: AppColors.secondColor,
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(color: AppColors.whiteColorWithOpacity)
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.0.w),
                      child: const SettingWidget(image: 'log_out', text: 'تسجيل الخروج'),
                    ),
                  ),
                  SizedBox(height: 18.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          AppRoutes.routeTo(context, const PrivacySettingScreen());
                        },
                        child: const TextWidget("سياسية الخصوصية  "),
                      ),
                      const TextWidget(" | "),
                      InkWell(
                        onTap: () {
                          AppRoutes.routeTo(context, const UseRulesScreen());
                        },
                        child: const TextWidget("  شروط الاستخدام"),
                      ),
                    ],
                  ),
                  SizedBox(height: 18.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
