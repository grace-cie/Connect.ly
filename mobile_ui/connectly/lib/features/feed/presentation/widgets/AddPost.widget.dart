import 'package:flutter/material.dart';

class AddPostWidget extends StatelessWidget {
  const AddPostWidget({
    super.key,
    required this.userName,
    required this.postController,
    required this.onTapPost,
  });

  final String userName;
  final TextEditingController postController;
  final Function onTapPost;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: _preview,
      ),
    );
  }

  Widget get _preview => Row(
        children: <Widget>[
          const CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.person),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userName,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                InkWell(
                  onTap: () => onTapPost,
                  child: const Text(
                    'What`s new?',
                    style: TextStyle(fontSize: 13),
                  ),
                )
              ],
            ),
          ),
        ],
      );

  // Widget get _topPart => Row(
  //       children: <Widget>[
  //         const CircleAvatar(
  //           backgroundColor: Colors.grey,
  //           child: Icon(Icons.person),
  //         ),
  //         const SizedBox(width: 10),
  //         Expanded(
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Text(
  //                 userName,
  //                 style: const TextStyle(
  //                     fontWeight: FontWeight.bold, color: Colors.black),
  //               ),
  //               SizedBox(
  //                 height: 30,
  //                 child: TextField(
  //                   style: const TextStyle(
  //                     fontSize: 13,
  //                   ),
  //                   controller: postController,
  //                   textAlign: TextAlign.start,
  //                   decoration: const InputDecoration(
  //                       // contentPadding: EdgeInsets.symmetric(vertical: 2),

  //                       hintText: "What's new?",
  //                       enabledBorder: InputBorder.none,
  //                       border: InputBorder.none,
  //                       hintStyle: TextStyle(
  //                         fontSize: 13,
  //                       )),
  //                 ),
  //               )
  //             ],
  //           ),
  //         ),
  //       ],
  //     );
}
