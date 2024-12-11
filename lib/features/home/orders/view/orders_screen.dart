import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:abo_maged_app/features/home/orders/widgets/current_order_widget.dart';
import 'package:abo_maged_app/features/home/orders/widgets/last_order_widget.dart';
import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: const TextWidget.bigText("الطلبات",color: AppColors.whiteColor),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 500.h,
            child: ContainedTabBarView(
              tabBarProperties: const TabBarProperties(indicatorColor: AppColors.mainColor),
              tabs: [
                Container(
                  height: 40.h,
                  width: 144.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(color: AppColors.yellowColor)
                  ),
                  child: const Center(child: TextWidget("طلبات سابقة",color: AppColors.whiteColor,)),
                ),
                Container(
                  height: 40.h,
                  width: 144.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(color: AppColors.yellowColor)
                  ),
                  child: const Center(child: TextWidget("طلبات حالية",color: AppColors.whiteColor,)),
                ),
              ],
              views: const [
                LastOrderWidget(),
                CurrentOrderWidget()
              ],
              onChange: (index) => print(index),
            ),
          ),
        ],
      ),
    );
  }
}
