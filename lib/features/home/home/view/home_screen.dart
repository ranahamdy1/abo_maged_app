import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
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
      body: Padding(
        padding: EdgeInsets.all(18.0.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
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
                SizedBox(
                  height: 40.h,
                  width: 40.w,
                  child: Image.asset("search".getPngAsset),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildDeliveryOption(
                  isSelected: isHomeDeliverySelected,
                  onTap: () {
                    setState(() {
                      isHomeDeliverySelected = true;
                      isPickupSelected = false;
                    });
                  },
                  asset: "drivery".getSvgAsset,
                  label: "توصيل للمنزل",
                ),
                _buildDeliveryOption(
                  isSelected: isPickupSelected,
                  onTap: () {
                    setState(() {
                      isPickupSelected = true;
                      isHomeDeliverySelected = false;
                    });
                  },
                  asset: "drivery".getSvgAsset,
                  label: "استلام من المتجر",
                ),
              ],
            ),
            SizedBox(
              height: 193.h,
              width: 276.w,
              child: SvgPicture.asset("on_boarding1".getSvgAsset),
            ),
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
      ),
    );
  }

  Widget _buildDeliveryOption({
    required bool isSelected,
    required VoidCallback onTap,
    required String asset,
    required String label,
  }) {
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
