import 'package:abo_maged_app/core/extensions/assets_widgets.dart';
import 'package:flutter/material.dart';
import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectionIconWidget extends StatelessWidget {
  final String image;
  const SelectionIconWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.secondColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          9.hSize,
          SvgPicture.asset(image.getSvgAsset),
          9.hSize,
          Container(
            margin: const EdgeInsets.only(top: 4),
            height: 4,
            width: 24,
            color: AppColors.mainColor,
          ),
        ],
      ),
    );
  }
}
