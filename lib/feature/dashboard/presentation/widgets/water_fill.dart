import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydration/core/widgets/custom/wave/fill.dart';
import 'package:hydration/feature/dashboard/bloc/dashboard_bloc.dart';

class WaterFill extends StatelessWidget {
  const WaterFill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
          return TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: state.percentage),
              curve: Curves.easeInOut,
              duration: const Duration(milliseconds: 700),
              builder: (context, double value, child) {
                return LiquidLinearProgressIndicator(
                  direction: Axis.vertical,
                  value: value,
          );
              });

          // return AnimatedContainer(
          //   curve: Curves.easeInOut,
          //   width: Dimens.width,
          //   height: Dimens.height * state.percentage,
          //   color: AppColors.secondary,
          //   duration: const Duration(milliseconds: 500),
          // );
        },
      ),
    );
  }
}
