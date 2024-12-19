import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonQuestionWidget extends StatefulWidget {
  const CommonQuestionWidget({super.key, required this.mainText, this.text1, this.text2, this.text3});
  final String? mainText;
  final String? text1;
  final String? text2;
  final String? text3;

  @override
  State<CommonQuestionWidget> createState() => _CommonQuestionWidgetState();
}

class _CommonQuestionWidgetState extends State<CommonQuestionWidget> {
  bool _isExpanded = false;

  void _toggleContainer() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: _toggleContainer,
          child: Container(
            height: 50.h,
            width: 368.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9.r),
              color: AppColors.secondColor,
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.close, color: AppColors.yellowColor),
                  TextWidget(widget.mainText ?? '', color: AppColors.whiteColor), // Fix here
                  Icon(
                    _isExpanded
                        ? Icons.keyboard_arrow_up_outlined
                        : Icons.keyboard_arrow_down_outlined,
                    color: AppColors.whiteColor,
                  ),
                ],
              ),
            ),
          ),
        ),
        // Expanded content that appears when tapped
        if (_isExpanded)
          Container(
            height: 200.h,
            width: 368.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(9.r),
                bottomRight: Radius.circular(9.r),
              ),
              color: AppColors.secondColor,
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0.r),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(widget.text1?? ""),
                  TextWidget(widget.text2?? ""),
                  TextWidget(widget.text3?? ""),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
