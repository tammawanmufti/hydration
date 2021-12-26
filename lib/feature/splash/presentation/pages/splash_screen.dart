import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hydration/core/constants/constants.dart';
import 'package:hydration/core/widgets/loading/circle_loading.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: Dimens.doubleUltraLarge * 2,
              width: Dimens.doubleUltraLarge * 2,
              child: SvgPicture.asset(Assets.logo),
            ),
            const SizedBox(
              height: Dimens.doubleUltraLarge,
            ),
            const CircleLoading()
          ],
        ),
      ),
    );
  }
}
