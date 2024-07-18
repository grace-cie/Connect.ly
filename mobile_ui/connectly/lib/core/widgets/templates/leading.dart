import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class Leading extends StatelessWidget {
  const Leading({super.key, required this.onPressed});
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final bool isDarkMode = theme.brightness == Brightness.dark;
    return IconButton(
      key: const ValueKey<String>('back-button-key'),
      onPressed: onPressed,
      icon: const Icon(FluentIcons.chevron_left_12_filled, color: Colors.white),
    );
  }
}
