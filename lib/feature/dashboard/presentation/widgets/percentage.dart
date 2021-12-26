import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          print(state.percentage);
          return Positioned(
            left: Dimens.medium,
            bottom: ((Dimens.height - 60) * state.percentage) + 20,
            child: Text('${(state.percentage * 100).toStringAsFixed(0)} %'),
          );
        });
  }
}
