import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/utils/app_routes.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:abo_maged_app/features/home/profile/widgets/common_question_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CommonQuestionScreen extends StatefulWidget {
  const CommonQuestionScreen({super.key});

  @override
  State<CommonQuestionScreen> createState() => _CommonQuestionScreenState();
}

class _CommonQuestionScreenState extends State<CommonQuestionScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: const TextWidget.bigText("الاسئلة الشائعة"),
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
          padding:  EdgeInsets.all(8.0.r),
          child: Column(
            children: [
              const CommonQuestionWidget(
                mainText: 'خياراتا الشحن',
                text1: "شركة أرامكس Aramex.",
                text2: "شركة ألما أكسبرس Alma Express.",
                text3: "شركة زاجل Zajil.",
              ),
              SizedBox(height: 12.h),
              const CommonQuestionWidget(
                mainText: 'ما هي أنواع اللحوم التي لديك؟',
                text1: "شركة أرامكس Aramex.",
                text2: "شركة ألما أكسبرس Alma Express.",
                text3: "شركة زاجل Zajil.",
              ),
              SizedBox(height: 12.h),
              const CommonQuestionWidget(
                mainText: 'ما هي شروط التسليم؟',
                text1: "شركة أرامكس Aramex.",
                text2: "شركة ألما أكسبرس Alma Express.",
                text3: "شركة زاجل Zajil.",
              ),
              SizedBox(height: 12.h),
              const CommonQuestionWidget(
                mainText: 'ما هي أفضل طريقة لحفظ اللحوم؟',
                text1: "شركة أرامكس Aramex.",
                text2: "شركة ألما أكسبرس Alma Express.",
                text3: "شركة زاجل Zajil.",
              ),
              SizedBox(height: 12.h),
              const CommonQuestionWidget(
                mainText: 'ما هي أفضل طريقة لحفظ اللحوم؟',
                text1: "شركة أرامكس Aramex.",
                text2: "شركة ألما أكسبرس Alma Express.",
                text3: "شركة زاجل Zajil.",
              ),
            ],
          ),
        ),
      )
    );
  }
}
