import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:abo_maged_app/features/home/basket/view/main_basket_screen.dart';
import 'package:flutter/material.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: const TextWidget.bigText("السلة",color: AppColors.whiteColor),
        centerTitle: true,
      ),
      body:
      /*Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("no_in_basket".getSvgAsset),
          ],
        ),
      ),*/
      const MainBasketScreen(),
    );
  }
}
