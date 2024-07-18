import 'package:auto_route/auto_route.dart';
import 'package:connectly/core/widgets/templates/base_body.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseBody(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.red,
            child: Text('hello'),
          )
        ],
      ),
    );
  }
}
