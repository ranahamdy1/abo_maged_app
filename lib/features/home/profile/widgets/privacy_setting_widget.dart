import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrivacySettingWidget extends StatelessWidget {
  const PrivacySettingWidget({super.key, required this.text, required this.backGroundColor, required this.borderColor});
  final String text;
  final Color backGroundColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      width: 368.w,
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: borderColor)
      ),
      child: Center(child: TextWidget(text)),
    );
  }
}
