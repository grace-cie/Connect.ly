import 'package:flutter/material.dart';

class BaseBody extends StatelessWidget {
  const BaseBody({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          border: const Border(
            top: BorderSide(width: 1, color: Colors.black12),
          ),
        ),
        margin: EdgeInsets.zero,
        child: child);
  }
}
