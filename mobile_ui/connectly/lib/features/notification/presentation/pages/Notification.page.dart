import 'package:auto_route/auto_route.dart';
import 'package:connectly/core/widgets/templates/base_body.dart';
import 'package:connectly/core/widgets/templates/sub_appbar_title.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const BaseBody(
      child: Column(
        children: <Widget>[
          SubAppbarTitle(
            title: 'Notifications',
          )
        ],
      ),
    );
  }
}
