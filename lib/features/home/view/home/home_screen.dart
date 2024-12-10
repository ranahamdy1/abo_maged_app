import 'package:abo_maged_app/core/extensions/assets_widgets.dart';
import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            22.hSize,
            SizedBox(
                height: 193,
                width: 276,
                child: SvgPicture.asset("on_boarding1".getSvgAsset),
            ),
            const TextWidget.bigText(
                "لم نتمكنن من تحديد موقعك الحالي , برجاء اختيار العنوان او اضافة عنوان جديد لنتمكن من عرض المنتجات المتاحة ",
                 color: AppColors.whiteColor,
                 fontSize: 16,
            ),
            44.hSize,
          ],
        ),
      ),
    );
  }
}
