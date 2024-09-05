import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_dot_nav.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_skip_button.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../controllers/onboarding/onboarding_controller.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController()); //we create an instance of OnBoardingController

    return Stack(
      children: [
        // Horizontal Scrollable Page
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1),
            OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2),
            OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3)
          ],
        ),

        // Skip button
        const OnBoardingSkipButton(),

        // Smooth Page Indicator
        const OnBoardingDotNavigation(),

        // Circular Button
        const OnBoardingNextButton()
      ],
    );
  }
}


