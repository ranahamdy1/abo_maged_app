import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PayWidget extends StatelessWidget {
  const PayWidget({super.key, required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 368,
      decoration: BoxDecoration(
          color: AppColors.secondColor,
          borderRadius: BorderRadius.circular(9),
          border: Border.all(color: AppColors.mainColor)
      ),
      child: Row(
        children: [
          SizedBox(width: 9.w,),
          SvgPicture.asset(image.getSvgAsset),
          SizedBox(width: 9.w,),
          TextWidget(text,color: AppColors.whiteColor,),
        ],
      ),
    );
  }
}
