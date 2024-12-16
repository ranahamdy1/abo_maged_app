import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/utils/app_routes.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:abo_maged_app/features/home/home/view/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MyFavScreen extends StatelessWidget {
  const MyFavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: const TextWidget.bigText("المفضلة"),
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
        height: 1000,
        width: double.infinity,
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
          itemBuilder: (_, index) => Padding(
            padding: EdgeInsets.all(8.0.w),
            child: InkWell(
              onTap: (){
                AppRoutes.routeTo(context, const ProductDetailsScreen());
              },
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
          ),
          itemCount: 4,
        ),
      ),
    );
  }
}
