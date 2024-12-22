import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/utils/app_routes.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_border/dotted_border.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: const TextWidget.bigText("الإشعارات"),
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
        actions: [
          Padding(
            padding: EdgeInsets.all(5.0.w),
            child: GestureDetector(
              onTap: () {
                AppRoutes.pop(context);
              },
              child: SizedBox(
                height: 40.h,
                width: 40.w,
                child: SvgPicture.asset("delete".getSvgAsset),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.all(18.0.w),
            child: DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(10),
              dashPattern: [6, 3],
              color: AppColors.whiteColor,
              child: Container(
                height: 133.h,
                width: 368.w,
                decoration: BoxDecoration(
                  color: AppColors.babyMainColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 8.0.h),
                          child: const Icon(
                            Icons.close,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("notification".getPngAsset),
                          SizedBox(width: 8.w),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget.bigText("عرض جديد 🎉"),
                                TextWidget(
                                  "هناك عرض جديد على هذا المنتج مع خصم 20٪!",
                                  maxLines: 3,
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      )
    );
  }
}
