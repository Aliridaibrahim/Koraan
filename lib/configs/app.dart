import 'package:flutter/material.dart';

import 'ui.dart';
import 'space.dart';
import 'ui_props.dart';
import 'app_dimensions.dart';

class App {
  static bool? isLtr;
  static bool showAds = false;

  static init(BuildContext context) {
    UI.init(context);
    AppDimensions.init();
    UIProps.init();
    Space.init();
    isLtr = Directionality.of(context) == TextDirection.ltr;
  }
}
