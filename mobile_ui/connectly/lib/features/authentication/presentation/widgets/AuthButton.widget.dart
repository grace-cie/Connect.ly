import 'package:connectly/core/utils/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class AuthButtonWidget extends StatelessWidget {
  const AuthButtonWidget({
    super.key,
    required this.buttonwidth,
    required this.isLoading,
    required this.login,
    required this.bgColor,
    required this.buttonName,
  });

  final double buttonwidth;
  final bool isLoading;
  final String buttonName;
  final Color bgColor;
  final Function() login;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: buttonwidth,
      child: ElevatedButton(
        onPressed: () {
          login();
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              return bgColor;

              //  Color(0xFF3897F0);
            },
          ),
        ),
        child: isLoading
            ? LoadingAnimationWidget.prograssiveDots(
                color: CustomColor.instagramWhite, size: 40)
            : Text(
                buttonName,
                style: const TextStyle(
                  color: CustomColor.instagramWhite,
                  fontSize: 14.0,
                ),
              ),
      ),
    );
  }
}
