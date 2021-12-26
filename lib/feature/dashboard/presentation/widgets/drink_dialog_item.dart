import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydration/core/constants/colors.dart';
import 'package:hydration/core/constants/constants.dart';
import 'package:hydration/feature/dashboard/bloc/dashboard_bloc.dart';

class DrinkDialogItem extends StatelessWidget {
  final int mililiter;
  const DrinkDialogItem({Key? key, required this.mililiter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<DashboardBloc>().add(UpdateHydration(mililiter));
        Navigator.pop(context);
      },
      child: Container(
        height: Dimens.extraLarge,
        decoration: BoxDecoration(color: AppColors.background, borderRadius: BorderRadius.circular(Dimens.largeTiny)),
        child: Center(
          child: Text(
            '$mililiter ml',
          ),
        ),
      ),
    );
  }
}
