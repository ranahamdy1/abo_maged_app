import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget("نتائج البحث"),
              TextWidget("200")
            ],
          ),
          SizedBox(
            height: 1000,
            width: double.infinity,
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
              itemBuilder: (_, index) => Padding(
                padding: EdgeInsets.all(8.0.w),
                child: Container(
                  height: 177.h,
                  width: 179.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color:  AppColors.secondColor
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("search_image".getPngAsset),
                      Padding(
                        padding: EdgeInsets.all(8.0.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget("مفروم غنم"),
                                TextWidget("120 ريال",color: AppColors.yellowColor,),
                              ],
                            ),
                            SvgPicture.asset("favourite".getSvgAsset),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              itemCount: 8,
            ),
          ),
        ],
      ),
    );
  }
}