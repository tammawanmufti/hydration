import 'package:flutter/material.dart';
import 'package:hydration/core/constants/decoration/concave_decoration.dart';
import 'package:hydration/core/themes/extensions.dart';

import '../constants.dart';

class ThemedDecoration {
  final BuildContext context;
  ThemedDecoration(this.context);

  Decoration get concaveDecoration {
    return BoxDecoration(
      color: context.backgroundColor,
      borderRadius: BorderRadius.circular(Dimens.atom),
      boxShadow: context.concaveShadow,
    );
  }

  Decoration get pressedDecoration {
    
    return PressedDecoration(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.atom),
      ),
      depression: 5,
      colors: context.pressedColor,
    );
  }

  Decoration get flatDecoration {
    return BoxDecoration(
      boxShadow: context.flatShadow,
      color: context.backgroundColor,
      borderRadius: BorderRadius.circular(Dimens.atom),
    );
  }
}
