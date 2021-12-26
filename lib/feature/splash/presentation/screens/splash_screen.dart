import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hydration/core/constants/constants.dart';
import 'package:hydration/core/widgets/loading/circle_loading.dart';
import 'package:hydration/feature/splash/presentation/bloc/splash_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<SplashBloc>().add(FirstLoading());
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
