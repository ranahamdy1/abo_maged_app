import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/utils/app_routes.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class UseRulesScreen extends StatelessWidget {
  const UseRulesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: const TextWidget.bigText("شروط الاستخدام"),
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
        padding: EdgeInsets.all(8.0.w),
        child: Column(
          children: [
            Container(
              height: 444.h,
              width: 583.w,
              decoration: BoxDecoration(
                  color: AppColors.babyMainColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.whiteColorWithOpacity)
              ),
              child: Column(
                children: [
                  SizedBox(
                      height: 105.h,
                      width: 96.w,
                      child: SvgPicture.asset("small_splash".getSvgAsset)),
                  Padding(
                    padding: EdgeInsets.all(18.0.w),
                    child: const TextWidget(
                      "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحةهذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة في مكان واحد،هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحةهذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة في مكان واحد،هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحةهذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحةهذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة في مكان واحد،هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحةهذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة في مكان واحد،هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحةهذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة في مكان واحد،هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحةهذا ",
                      textAlign: TextAlign.center,
                    ),
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

