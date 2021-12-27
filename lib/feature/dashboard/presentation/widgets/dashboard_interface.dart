import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydration/core/constants/colors.dart';
import 'package:hydration/core/constants/dimens.dart';
import 'package:hydration/feature/dashboard/bloc/dashboard_bloc.dart';
import 'package:hydration/feature/dashboard/presentation/widgets/drink_dialog.dart';

class DashboardInterface extends StatelessWidget {
  const DashboardInterface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(builder: (context, state) {
      return Positioned.fill(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Center(
                child: Container(
                  margin: const EdgeInsets.all(Dimens.quadrupleUltraLarge),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(color: AppColors.background, shape: BoxShape.circle),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${state.hydrationTotal} ml',
                        style: const TextStyle(
                          color: AppColors.primary,
                          fontSize: Dimens.superLarge,
                          
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Remaining ${state.hydrationTarget} ml',
                        style: const TextStyle(
                          color: AppColors.primary,
                          fontSize: Dimens.extraMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const DrinkDialog();
                          });
                  },
                  child: Container(
                    width: Dimens.doubleUltraLarge,
                    height: Dimens.doubleUltraLarge,
                    decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.add,
                      size: Dimens.extraLarge,
                      color: AppColors.primary
                      
                    ),
                  ),
                ),
              ],
            ))
          ],
        ),
      );
    });
  }
}
