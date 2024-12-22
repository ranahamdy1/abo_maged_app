import 'package:abo_maged_app/features/home/main_navigation/main_navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/utils/app_routes.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:abo_maged_app/features/welcome/on_boarding/controller/on_boarding/on_boarding_cubit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnBoardingCubit>(
      create: (context) => OnBoardingCubit(),
      child: BlocConsumer<OnBoardingCubit, OnBoardingState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is GoToHomeState) {
            WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
              AppRoutes.routeAndRemoveAllTo(context, const MainNavigationScreen());
            });
          }
          final onBoarding = context.watch<OnBoardingCubit>();
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 5.h),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: GestureDetector(
                      onTap: () {
                        AppRoutes.routeAndRemoveTo(context, const MainNavigationScreen());
                      },
                      child: Padding(
                        padding: EdgeInsets.all(18.r),
                        child: const TextWidget.smallText(
                          "تخطي",
                          color: AppColors.yellowColor,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: PageView.builder(
                      controller: onBoarding.pageController,
                      onPageChanged: (page) {
                        context.read<OnBoardingCubit>().changePage(page);
                      },
                      itemCount: onBoarding.onBoardingList.length,
                      itemBuilder: (context, i) => Column(
                        children: [
                          SizedBox(
                            height: 246.h,
                            width: 371.w,
                            child: SvgPicture.asset(onBoarding.onBoardingList[i].image),
                          ),
                          Padding(
                            padding: EdgeInsets.all(4.r),
                            child: Column(
                              children: [
                                TextWidget.bigText(
                                  onBoarding.onBoardingList[i].title,
                                  color: AppColors.yellowColor,
                                ),
                                SizedBox(height: 12.h),
                                TextWidget.smallText(
                                  onBoarding.onBoardingList[i].body,
                                  color: AppColors.whiteColor,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Stack(
                      children: [
                        SvgPicture.asset("on_boarding".getSvgAsset),
                        Positioned(
                          bottom: 33.h,
                          right: 33.w,
                          left: 33.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: List.generate(
                                  onBoarding.onBoardingList.length,
                                      (index) => AnimatedContainer(
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.bounceInOut,
                                    width: index == onBoarding.currentPage ? 44.w : 8.w,
                                    height: 8.h,
                                    margin: EdgeInsets.all(2.r),
                                    decoration: BoxDecoration(
                                      color: index == onBoarding.currentPage
                                          ? AppColors.whiteColor
                                          : AppColors.whiteColorWithOpacity,
                                      borderRadius: BorderRadius.circular(4.r),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 22.w),
                              Container(
                                height: 68.r,
                                width: 68.r,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(88.r),
                                  border: Border.all(color: AppColors.whiteColor),
                                ),
                                child: onBoarding.currentPage == onBoarding.onBoardingList.length - 1
                                    ? GestureDetector(
                                  onTap: () {
                                    AppRoutes.routeAndRemoveAllTo(context, const MainNavigationScreen());
                                  },
                                  child: const Center(
                                    child: TextWidget.bigText(
                                      "أبدأ",
                                      color: AppColors.whiteColor,
                                    ),
                                  ),
                                )
                                    : GestureDetector(
                                  onTap: () {
                                    context.read<OnBoardingCubit>().next();
                                  },
                                  child: const Icon(
                                    Icons.arrow_forward,
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
