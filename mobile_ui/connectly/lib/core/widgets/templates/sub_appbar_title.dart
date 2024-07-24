import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubAppbarTitle extends StatelessWidget {
  const SubAppbarTitle({
    super.key,
    required this.title,
    this.pageIcon,
  });

  final String title;
  final IconData? pageIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (pageIcon != null)
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(pageIcon),
                ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: const Icon(FluentIcons.search_12_filled),
              )
            ],
          )
        ],
      ),
    );
  }
}
