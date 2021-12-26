import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${state.hydrationTotal} ml'),
                Text('Remaining ${state.hydrationTarget} ml'),
              ],
            )),
            Expanded(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    if (state.percentage < 1) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const DrinkDialog();
                          });
                      // context.read<DashboardBloc>().add(const UpdateHydration(250));
                    }
                  },
                  child: Container(
                    width: Dimens.doubleUltraLarge,
                    height: Dimens.doubleUltraLarge,
                    decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.add,
                      size: Dimens.extraLarge,
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