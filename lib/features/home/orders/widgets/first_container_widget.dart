import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstContainerWidget extends StatelessWidget {
  const FirstContainerWidget({super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.w),
      child: Row(
        children: [
          TextWidget(text1),
          const Spacer(),
          TextWidget.mediumText(text2,color: AppColors.yellowColor,),
        ],
      ),
    );
  }
}
