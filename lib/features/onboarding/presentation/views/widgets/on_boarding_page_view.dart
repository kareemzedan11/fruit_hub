import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/assets_manager.dart';
import 'package:fruithub/core/utils/colors_manager.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';
import 'package:fruithub/features/onboarding/presentation/views/widgets/page-view-item.dart';

class OnBoardingPageView extends StatelessWidget {
  OnBoardingPageView({super.key, required this.pageController});

  late PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible:
           true,
          backgroundImage:
              Assets.assetsImagesOnBoardingPage1ViewBackgroundImage,
          image: Assets.assetsImagesIcFruitBasket,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text("مرحبا بك في", style: TextStyles.bold23),
              Text(
                " Hub",
                style: TextStyles.bold23.copyWith(
                  color: ColorsManager.secondaryColor,
                ),
              ),
              Text(
                "Fruit",
                style: TextStyles.bold23.copyWith(
                  color: ColorsManager.primaryColor,
                ),
              ),
            ],
          ),
          subTitle:
              "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
        ),
        PageViewItem(
          isVisible:
              false,
          backgroundImage:
              Assets.assetsImagesOnBoardingPage2ViewBackgroundImage,
          image: Assets.assetsImagesIcPineapple,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("ابحث وتسوق",style:   TextStyles.bold23,)],
          ),
          subTitle:
              "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
        ),
      ],
    );
  }
}
