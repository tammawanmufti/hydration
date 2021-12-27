import 'package:flutter/material.dart';
import 'package:hydration/core/constants/decoration/concave_decoration.dart';
import 'package:hydration/core/themes/extensions.dart';

import '../constants.dart';

class ThemedDecoration {
  final BuildContext context;
  ThemedDecoration(this.context);

  Decoration get buttonOuterShadow {
    return BoxDecoration(
      color: context.backgroundColor,
      borderRadius: BorderRadius.circular(Dimens.atom),
      boxShadow: context.outerShadow,
    );
  }

  Decoration get buttonInnerShadow {
    return ConceaveDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.atom),
        ),
        depression: 5,
        colors: context.innerShadowColor);
  }
}
