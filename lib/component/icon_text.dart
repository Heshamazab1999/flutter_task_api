import 'package:flutter/material.dart';
import 'package:flutter_task/helper/app_constants.dart';

class IconText extends StatelessWidget {
  const IconText(
      {Key? key,
      this.text,
      this.icon,
      this.colorIcon = AppConstants.mainColor,
      this.colorText = AppConstants.blackColor})
      : super(key: key);
  final String? text;
  final String? icon;
  final Color? colorIcon;
  final Color? colorText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text ?? '', style: TextStyle(color: colorText)),
        const SizedBox(width: 2),
        Image.asset(
          icon ?? '',
          width: 20,
          height: 20,
          color: colorIcon,
        ),
      ],
    );
  }
}
