import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/features/welcome/on_boarding/models/on_boarding_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
        title: "قم بتحديد موقعك",
        body: "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحةهذا النص هو مثال لنص يمكن أن يستبدل هذا النص هو مثال لنص ",
        image: 'on_boarding1'.getSvgAsset,
    ),
    OnBoardingModel(
        title: "ملحمة ابو ماجد في خدمتك دائماً",
      body: "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحةهذا النص هو مثال لنص يمكن أن يستبدل هذا النص هو مثال لنص ",
      image: 'on_boarding2'.getSvgAsset,
    ),
    OnBoardingModel(
        title: "توصيل طلبك بسرعة حيثما كنت",
      body: "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحةهذا النص هو مثال لنص يمكن أن يستبدل هذا النص هو مثال لنص ",
      image: 'on_boarding3'.getSvgAsset,
    )
  ];
  int currentPage = 0;
  PageController pageController = PageController(initialPage: 0);
  OnBoardingCubit() : super(OnBoardingInitial());
  changePage(int page) {
    currentPage = page;
    emit(NextState());
  }

  next() {
    if (currentPage >= onBoardingList.length - 1) {
      emit(GoToHomeState());
    } else {
      currentPage++;
      pageController.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.decelerate);
      emit(NextState());
    }
  }
}
