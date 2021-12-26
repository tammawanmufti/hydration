import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydration/core/constants/colors.dart';
import 'package:hydration/core/constants/constants.dart';
import 'package:hydration/feature/dashboard/bloc/dashboard_bloc.dart';

class WaterFill extends StatelessWidget {
  const WaterFill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
          return AnimatedContainer(
            curve: Curves.easeInOut,
            width: Dimens.width,
            height: Dimens.height * state.percentage,
            color: AppColors.secondary,
            duration: const Duration(milliseconds: 500),
          );
        },
      ),
    );
  }
}
