import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:abo_maged_app/features/home/orders/widgets/current_order_widget.dart';
import 'package:abo_maged_app/features/home/orders/widgets/last_order_widget.dart';
import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: const TextWidget.bigText("الطلبات", color: AppColors.whiteColor),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 500.h,
            child: ContainedTabBarView(
              tabBarProperties: const TabBarProperties(
                indicator: BoxDecoration(
                  color: AppColors.mainColor,
                ),
                indicatorSize: TabBarIndicatorSize.label,
              ),
              tabs: [
                Container(
                  height: 40.h,
                  width: 144.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(
                      color: _selectedIndex == 0
                          ? AppColors.yellowColor
                          : AppColors.whiteColor,
                    ),
                  ),
                  child: const Center(
                    child: TextWidget(
                      "طلبات سابقة",
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
                Container(
                  height: 40.h,
                  width: 144.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(
                      color: _selectedIndex == 1
                          ? AppColors.yellowColor
                          : AppColors.whiteColor,
                    ),
                  ),
                  child: const Center(
                    child: TextWidget(
                      "طلبات حالية",
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ],
              views: const [
                LastOrderWidget(),
                CurrentOrderWidget(),
              ],
              onChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
