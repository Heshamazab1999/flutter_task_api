import 'package:flutter/material.dart';
import 'package:flutter_task/component/icon_text.dart';
import 'package:flutter_task/helper/app_constants.dart';
import 'package:flutter_task/helper/images.dart';

class FixedButton extends StatelessWidget {
  const FixedButton({Key? key, this.text, this.onPressed}) : super(key: key);
  final String? text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: AppConstants.mainColor,
          ),
          child: IconText(
              text: text,
              icon: Images.catIcon,
              colorIcon: AppConstants.whiteColor,
              colorText: AppConstants.whiteColor)),
    );
  }
}
