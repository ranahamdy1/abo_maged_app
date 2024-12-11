import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  final urlImages = [
    "assets/images/caursal_image.png",
    "assets/images/caursal_image.png",
    "assets/images/caursal_image.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 18.0.w),
          child: const Align(
            alignment: Alignment.topRight,
              child: TextWidget.bigText("يوميات",color: AppColors.whiteColor,),
          ),
        ),
        SizedBox(height: 12.h),
        SizedBox(
          height: 100,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 44.h,
                      width: 48.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(44.r),
                          border: Border.all(color: AppColors.yellowColor)
                      ),
                      child: Image.asset("food".getPngAsset),
                    ),
                    SizedBox(height: 3.h),
                    const TextWidget.mediumText("ذبيحة اليوم",color: AppColors.whiteColor,)
                  ],
                ),
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.all(18.0.w),
          child: const Row(
            children: [
              TextWidget.bigText("عروض مميزة",color: AppColors.whiteColor),
              Spacer(),
              TextWidget.smallText("عرض الكل",color: AppColors.yellowColor,),
            ],
          ),
        ),
        CarouselSlider.builder(
          itemCount: urlImages.length,
          itemBuilder: (context, index, realIndex) {
            final urlImage = urlImages[index];
            return buildImage(urlImage,index);
          },
          options: CarouselOptions(
              height: 125,
              autoPlay: true,
              viewportFraction: 0.70,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 18.0.w,right: 18.0.w,left: 18.0.w),
          child: const Row(
            children: [
              TextWidget.bigText("التصنيفات",color: AppColors.whiteColor),
              Spacer(),
              TextWidget.smallText("عرض الكل",color: AppColors.yellowColor,),
            ],
          ),
        ),
        SizedBox(height: 12.h),
        SizedBox(
          height: 100,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 96.h,
                  width: 89.w,
                  padding: EdgeInsets.all(5.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(color: AppColors.yellowColor),
                      color: AppColors.secondColor
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("food".getPngAsset),
                      const TextWidget.mediumText("ذبيحة اليوم",color: AppColors.whiteColor,)
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 18.0.w,right: 18.0.w,left: 18.0.w),
          child: const Row(
            children: [
              TextWidget.bigText("مفروم",color: AppColors.whiteColor),
              Spacer(),
              TextWidget.smallText("عرض الكل",color: AppColors.yellowColor,),
            ],
          ),
        ),
        SizedBox(height: 12.h),
        SizedBox(
          height: 155.h,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100.h,
                  width: 104.w,
                  padding: EdgeInsets.all(5.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.r),
                      color: AppColors.secondColor
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                          height: 66.h,
                          width: 104.w,
                          child: Image.asset("food2".getPngAsset)),
                      SizedBox(
                          height: 55.h,
                          width: 104.w,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextWidget.mediumText("مفروم غنم",color: AppColors.whiteColor,),
                              TextWidget.mediumText("120 ريال",color: AppColors.yellowColor,),
                            ],
                          ))
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

Widget buildImage(String urlImage, int index) =>
    Image.asset(urlImage,fit: BoxFit.cover,width: 271,);