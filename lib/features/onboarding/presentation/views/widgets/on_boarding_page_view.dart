import 'package:flutter/material.dart';
import 'package:fruithub/core/helper/assets_manager.dart';
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
          isVisible: (pageController.hasClients ?   pageController.page!.round()  : 0)== 0,
          backgroundImage:
              Assets.assetsImagesOnBoardingPage1ViewBackgroundImage,
          image: Assets.assetsImagesIcFruitBasket,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [Text("مرحبا بك في"), Text("Hub"), Text("Fruit")],
          ),
          subTitle:
              "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
        ),
        PageViewItem(
               isVisible: (pageController.hasClients ?   pageController.page!.round()  : 0)!= 0,
          backgroundImage:
              Assets.assetsImagesOnBoardingPage2ViewBackgroundImage,
          image: Assets.assetsImagesIcPineapple,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("ابحث وتسوق")],
          ),
          subTitle:
              "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
        ),
      ],
    );
  }
}
