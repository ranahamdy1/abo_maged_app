import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:abo_maged_app/features/home/basket/view/basket_screen.dart';
import 'package:abo_maged_app/features/home/main_navigation/widget/selection_icon_widget.dart';
import 'package:abo_maged_app/features/home/home/view/home_screen.dart';
import 'package:abo_maged_app/features/home/orders/view/orders_screen.dart';
import 'package:abo_maged_app/features/home/profile/view/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});
  @override
  State<MainNavigationScreen> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<MainNavigationScreen> {
  int currentPageIndex = 0;

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 223.h,
          width: 427.w,
          decoration: const BoxDecoration(
            color: AppColors.secondColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(22.0),
              topRight: Radius.circular(22.0),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("line".getPngAsset),
              const TextWidget("قم بالتواصل معنا عبر الآتي"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("phone-call 1".getPngAsset),
                  Image.asset("telegram".getPngAsset),
                  Image.asset("whatsapp".getPngAsset),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: NavigationBarTheme(
          data: const NavigationBarThemeData(
            indicatorColor: Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: 72,
              width: 412,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: AppColors.secondColor
              ),
              child: Center(
                child: NavigationBar(
                  backgroundColor: Colors.transparent,
                  onDestinationSelected: (int index) {
                    setState(() {
                      currentPageIndex = index;
                    });

                    // Show bottom sheet when the "Orders" destination is selected (index 2)
                    if (index == 3) {
                      _showBottomSheet(context);
                    }
                  },
                  selectedIndex: currentPageIndex,
                  destinations: <Widget>[
                    NavigationDestination(
                      selectedIcon: const SelectionIconWidget(image: 'home_icon2',),
                      icon: SvgPicture.asset("home_icon1".getSvgAsset),
                      label: '',
                    ),
                    NavigationDestination(
                      selectedIcon: const SelectionIconWidget(image: 'delete2',),
                      icon: SvgPicture.asset("delete1".getSvgAsset),
                      label: '',
                    ),
                    NavigationDestination(
                      selectedIcon: const SelectionIconWidget(image: 'order2',),
                      icon: SvgPicture.asset("order1".getSvgAsset),
                      label: '',
                    ),
                    NavigationDestination(
                      selectedIcon: const SelectionIconWidget(image: 'basket2',),
                      icon: SvgPicture.asset("basket1".getSvgAsset),
                      label: '',
                    ),
                    NavigationDestination(
                      selectedIcon: const SelectionIconWidget(image: 'profile2',),
                      icon: SvgPicture.asset("profile1".getSvgAsset),
                      label: '',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: <Widget>[
          const HomeScreen(),
          const BasketScreen(),
          const OrdersScreen(),
          const HomeScreen(),
          const ProfileScreen(),
        ][currentPageIndex],
      ),
    );
  }
}
