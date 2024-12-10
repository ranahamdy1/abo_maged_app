import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:abo_maged_app/core/extensions/assets_widgets.dart';
import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/core/utils/app_routes.dart';
import 'package:abo_maged_app/core/widgets/text_widget.dart';
import 'package:abo_maged_app/features/welcome/on_boarding/controller/on_boarding/on_boarding_cubit.dart';
import 'package:abo_maged_app/features/welcome/on_boarding/view/start_screen.dart';
import 'package:flutter_svg/svg.dart';

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
              AppRoutes.routeAndRemoveAllTo(context, const StartScreen());
            });
          }
          final onBoarding = context.watch<OnBoardingCubit>();
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  5.hSize,
                  Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                          onTap: () {
                            AppRoutes.routeAndRemoveTo(context, const StartScreen());
                          },
                          child: Padding(
                            padding: 18.aEdge,
                            child: const TextWidget.smallText("تخطي", color: AppColors.yellowColor, fontSize: 16,),
                          ),
                      ),
                  ),
                  20.hSize,
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
                              height: 246,
                              width: 371,
                              child: SvgPicture.asset(onBoarding.onBoardingList[i].image)),
                          33.hSize,
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              children: [
                                TextWidget.bigText(
                                  onBoarding.onBoardingList[i].title,
                                  color: AppColors.yellowColor,
                                ),
                                33.hSize,
                                TextWidget.smallText(
                                  onBoarding.onBoardingList[i].body,
                                  color: AppColors.whiteColor,
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
                          bottom: 33,
                          right: 33,
                          left: 33,
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
                                    width: index == onBoarding.currentPage ? 44 : 8,
                                    height: 8,
                                    margin: const EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      color: index == onBoarding.currentPage ? AppColors.whiteColor : AppColors.whiteColorWithOpacity,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                ),
                              ),
                              22.wSize,
                              Container(
                                height: 68,
                                width: 68,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(88),
                                  border: Border.all(color: AppColors.whiteColor),
                                ),
                                child: onBoarding.currentPage == onBoarding.onBoardingList.length - 1
                                    ? GestureDetector(
                                        onTap: () {
                                          AppRoutes.routeAndRemoveAllTo(context, const StartScreen());
                                        },
                                        child: const Center(child: TextWidget.bigText("أبدأ", color: AppColors.whiteColor,),),)
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
