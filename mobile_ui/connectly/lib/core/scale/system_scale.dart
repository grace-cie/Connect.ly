import 'dart:io';

import 'package:connectly/config.dart';
import 'package:injectable/injectable.dart';

abstract class SystemScale {
  String systemFontScale(double systemFontScale);
}

@LazySingleton(as: SystemScale)
class SystemScaleImpl implements SystemScale {
  @override
  String systemFontScale(double systemFontScale) {
    if (Platform.isAndroid) {
      if (systemFontScale <= 0.85) {
        return SystemFontScale.SYSTEMFONTSCALE_SMALL;
      } else if (systemFontScale > 0.85 && systemFontScale == 1.0) {
        return SystemFontScale.SYSTEMFONTSCALE_DEFAULT;
      } else if (systemFontScale > 1.0 && systemFontScale == 1.15) {
        return SystemFontScale.SYSTEMFONTSCALE_LARGE;
      } else {
        return SystemFontScale.SYSTEMFONTSCALE_LARGEST;
      }
    }

    if (Platform.isIOS) {
      final String getOneDecimal = systemFontScale.toStringAsFixed(2);
      final double fontScaleToDouble = double.parse(getOneDecimal);
      if (fontScaleToDouble <= 0.88) {
        return SystemFontScale.SYSTEMFONTSCALE_SMALL;
      } else if (fontScaleToDouble > 0.88 && fontScaleToDouble == 0.94) {
        return SystemFontScale.SYSTEMFONTSCALE_DEFAULT;
      } else if (fontScaleToDouble > 0.94 &&
          (fontScaleToDouble == 1.0 || fontScaleToDouble == 1.12)) {
        return SystemFontScale.SYSTEMFONTSCALE_LARGE;
      } else if (fontScaleToDouble > 1.12) {
        return SystemFontScale.SYSTEMFONTSCALE_LARGEST;
      }
    }

    return SystemFontScale.SYSTEMFONTSCALE_LARGEST;
  }
}
