import 'package:connectly/config.dart';
import 'package:connectly/core/scale/system_scale.dart';
import 'package:flutter/material.dart';

void showIconSnackBar(
  BuildContext context,
  String message,
  Icon icon,
  SystemScale systemScale, {
  Color? backgroundColor,
  int? seconds,
}) {
  final String systemFontScale = systemScale
      .systemFontScale(MediaQuery.of(context).textScaler.textScaleFactor);
  final bool isNotLargest =
      systemFontScale != SystemFontScale.SYSTEMFONTSCALE_LARGEST;

  final String limitedText = message.length > 32
      ? '${message.substring(0, 32)}...' // Truncate and add ellipsis
      : message;
  ScaffoldMessenger.of(context).hideCurrentSnackBar();
  final SnackBar snackBar = SnackBar(
    duration: Duration(seconds: seconds ?? 3),
    content: Row(
      children: <Widget>[
        SizedBox(
          width: 25,
          height: 25,
          child: icon,
        ),
        const SizedBox(width: 10),
        Text(
          isNotLargest ? message : limitedText,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),
        ),
      ],
    ),
    backgroundColor: Theme.of(context).brightness == Brightness.light &&
            backgroundColor != null
        ? backgroundColor
        : null,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
