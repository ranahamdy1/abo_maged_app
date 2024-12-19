import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/utils/app_routes.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:abo_maged_app/features/home/profile/widgets/about_app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AboutAppScreen extends StatelessWidget {
  const AboutAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: const TextWidget.bigText("عن التطبيق"),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0.r),
          child: Column(
            children: [
              const AboutAppWidget(
                  image: "small_splash",
                  smallText: "نبذة عنا",
                  bigText:
                  "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحةهذا النص هو مثال لنص يمكن أن يستبدل هذا النص هو مثال لنص  هذا النص هو "
              ),
              SizedBox(height: 12.h),
              const AboutAppWidget(
                  image: "about_app",
                  smallText: "رؤيتنا",
                  bigText:
                  "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحةهذا النص هو مثال لنص يمكن أن يستبدل هذا النص هو مثال لنص  هذا النص هو "
              ),
              SizedBox(height: 12.h),
              const AboutAppWidget(
                  image: "about_app",
                  smallText: "رسالتنا",
                  bigText:
                  "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحةهذا النص هو مثال لنص يمكن أن يستبدل هذا النص هو مثال لنص  هذا النص هو "
              ),
              SizedBox(height: 12.h),
              const AboutAppWidget(
                  image: "about_app",
                  smallText: "أهدافنا",
                  bigText:
                  "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحةهذا النص هو مثال لنص يمكن أن يستبدل هذا النص هو مثال لنص  هذا النص هو "
              ),
            ],
          ),
        ),
      ),
    );
  }
}
