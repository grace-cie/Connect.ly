import 'package:connectly/core/widgets/templates/leading.dart';
import 'package:connectly/core/widgets/templates/page_title.dart';
import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({
    super.key,
    this.title,
    this.actions,
    this.onBackPressed,
  });

  final String? title;
  final List<Widget>? actions;
  final Function()? onBackPressed;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final bool isDarkMode = theme.brightness == Brightness.dark;
    return AppBar(
      backgroundColor: theme.canvasColor,
      elevation: 0,
      centerTitle: true,
      title: title != null ? PageTitle(title: title!) : null,
      leading:
          onBackPressed != null ? Leading(onPressed: onBackPressed!) : null,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
