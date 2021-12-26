import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydration/core/constants/colors.dart';
import 'package:hydration/core/constants/constants.dart';
import 'package:hydration/feature/dashboard/bloc/dashboard_bloc.dart';

class DashboardHydrationPercentage extends StatelessWidget {
  final double hydration;
  const DashboardHydrationPercentage({Key? key, this.hydration = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
        buildWhen: (previous, current) => current.hydrationTotal != previous.hydrationTotal,
        builder: (context, state) {
          return AnimatedPositioned(
            left: Dimens.medium,
            bottom: ((Dimens.height - 150) * state.percentage) + 20,
            duration: const Duration(milliseconds: 450),
            curve: Curves.easeInOut,
            child: Container(
              padding: const EdgeInsets.all(Dimens.atom),
              decoration:
                  BoxDecoration(color: AppColors.secondary, borderRadius: BorderRadius.circular(Dimens.largeTiny)),
              child: Text(
                '${(state.percentage * 100).toStringAsFixed(0)}%',
                style:
                    const TextStyle(color: AppColors.background, fontSize: Dimens.large, fontWeight: FontWeight.bold),
              ),
            ),
          );
        });
  }
}
