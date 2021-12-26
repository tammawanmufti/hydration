import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydration/core/constants/colors.dart';
import 'package:hydration/core/constants/constants.dart';
import 'package:hydration/feature/dashboard/bloc/dashboard_bloc.dart';
import 'package:hydration/feature/dashboard/presentation/widgets/percentage.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: BlocBuilder<DashboardBloc, DashboardState>(
                builder: (context, state) {
                  return Container(
                    width: Dimens.width,
                    height: Dimens.height * state.percentage,
                    color: AppColors.primary.withAlpha(150),
                  );
                },
              ),
            ),
            const DashboardHydrationPercentage(),
          ],
        ));
  }
}
