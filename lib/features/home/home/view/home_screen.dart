import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/utils/app_routes.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:abo_maged_app/features/home/home/view/main_home_screen.dart';
import 'package:abo_maged_app/features/home/home/view/search_screen.dart';
import 'package:abo_maged_app/features/map/view/map_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isHomeDeliverySelected = false;
  bool isPickupSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(18.0.w),
              child: Row(
                children: [
                  SizedBox(
                    height: 40.h,
                    width: 40.w,
                    child: Image.asset("address".getPngAsset),
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextWidget.mediumText(
                          "حياك الله",
                          color: AppColors.whiteColor,
                        ),
                        SizedBox(height: 4.h),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: AppColors.whiteColor,
                              size: 18,
                            ),
                            SizedBox(width: 4.w),
                            TextWidget.smallText(
                              "عنوانك يعرض هنا ..... ",
                              color: AppColors.whiteColorWithOpacity,
                            ),
                            SizedBox(width: 4.w),
                            const TextWidget.mediumText(
                              "أضف عنوان",
                              color: AppColors.yellowColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      AppRoutes.routeTo(context, const SearchScreen());
                    },
                    child: SizedBox(
                      height: 40.h,
                      width: 40.w,
                      child: Image.asset("search".getPngAsset),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(18.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DeliveryOption(
                    isSelected: isHomeDeliverySelected,
                    onTap: () {
                      setState(() {
                        isHomeDeliverySelected = true;
                        isPickupSelected = false;
                        AppRoutes.routeTo(context, MapScreen());
                      });
                    },
                    asset: "drivery".getSvgAsset,
                    label: "توصيل للمنزل",
                  ),
                  DeliveryOption(
                    isSelected: isPickupSelected,
                    onTap: () {
                      setState(() {
                        isPickupSelected = true;
                        isHomeDeliverySelected = false;
                      });
                    },
                    asset: "drivery".getSvgAsset,
                    label: "استلام من الفرع",
                  ),
                ],
              ),
            ),
            /*Padding(
              padding: EdgeInsets.all(18.0.w),
              child: Column(
                children: [
                  SizedBox(height: 12.h),
                  SizedBox(
                    height: 193.h,
                    width: 276.w,
                    child: SvgPicture.asset("on_boarding1".getSvgAsset),
                  ),
                  SizedBox(height: 22.h),
                  SizedBox(
                    height: 100.h,
                    width: 276.w,
                    child: const TextWidget.bigText(
                      "لم نتمكن من تحديد موقعك الحالي, برجاء اختيار العنوان أو إضافة عنوان جديد لنتمكن من عرض المنتجات المتاحة",
                      color: AppColors.whiteColor,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 44.h),
                ],
              ),
            ),*/
            const MainHomeScreen(),
          ],
        ),
      ),
    );
  }
}

class DeliveryOption extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;
  final String asset;
  final String label;

  const DeliveryOption({
    super.key,
    required this.isSelected,
    required this.onTap,
    required this.asset,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 80.h,
        width: 155.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: isSelected ? AppColors.yellowColor : AppColors.whiteColor,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(asset),
            TextWidget.smallText(
              label,
              color: isSelected ? AppColors.yellowColor : AppColors.whiteColor,
            ),
          ],
        ),
      ),
    );
  }
}