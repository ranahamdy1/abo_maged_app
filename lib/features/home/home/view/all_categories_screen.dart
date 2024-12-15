import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/utils/app_routes.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AllCategoriesScreen extends StatelessWidget {
  const AllCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: const TextWidget.bigText("التصنيفات"),
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
      body: SizedBox(
        width: double.infinity,
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemBuilder: (_, index) {
            final containerColor =
            index % 2 == 0 ? AppColors.secondColor : AppColors.babyMainColor;

            return Padding(
              padding: EdgeInsets.all(5.0.w),
              child: Container(
                height: 122.h,
                width: 117.w,
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(9.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(2.0.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("categ".getPngAsset),
                      const TextWidget(
                        "مفروم",
                        color: AppColors.whiteColor,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: 9,
        ),
      ),
    );
  }
}
