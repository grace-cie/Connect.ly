import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    super.key,
    required this.name,
    required this.title,
    required this.body,
    required this.screenWidth,
  });

  final String name;
  final String title;
  final String body;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          _topPart,
          _bodyPart,
          _actionsPart,
        ],
      ),
    );
  }

  Widget get _topPart => Row(
        children: <Widget>[
          const CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.person),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text(
                title,
                style: const TextStyle(color: Colors.black),
              ),
            ],
          )
        ],
      );

  Widget get _bodyPart => Padding(
        padding: const EdgeInsets.only(top: 5),
        child: SizedBox(
          width: screenWidth,
          child: Text(
            body,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      );

  Widget get _actionsPart => Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Row(
          children: <Widget>[
            _reactionWidget(FluentIcons.heart_20_regular, 12),
            const SizedBox(width: 10),
            _reactionWidget(FluentIcons.comment_20_regular, 12),
            const SizedBox(width: 10),
            _reactionWidget(FluentIcons.share_20_regular, 12)
          ],
        ),
      );

  Widget _reactionWidget(IconData actionIcon, int count) {
    return Row(
      children: [
        Icon(
          actionIcon,
          size: 20,
        ),
        const SizedBox(width: 2),
        Text(
          count.toString(),
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
