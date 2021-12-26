import 'package:flutter/material.dart';
import 'package:hydration/core/constants/dimens.dart';
import 'package:hydration/feature/dashboard/presentation/widgets/drink_dialog_item.dart';

class DrinkDialog extends StatelessWidget {
  const DrinkDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> mililiters = [100, 200, 300, 400, 500, 750];
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimens.largeTiny)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: mililiters.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 9 / 2.5,
              crossAxisSpacing: Dimens.atom,
              mainAxisSpacing: Dimens.atom,
            ),
            itemBuilder: (context, index) {
              return DrinkDialogItem(mililiter: mililiters[index]);
            }),
      ),
    );
  }
}
