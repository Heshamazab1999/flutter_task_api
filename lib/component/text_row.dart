import 'package:flutter/material.dart';
import 'package:flutter_task/helper/app_constants.dart';

class TextRow extends StatelessWidget {
  const TextRow({Key? key, this.text}) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            const Text(
              "اظهار الكل",
              style: TextStyle(
                  fontSize: AppConstants.mediumFont,
                  color: AppConstants.mainColor),
            ),
            Text(
              text ?? '',
              style: const TextStyle(
                  color: AppConstants.blackColor,
                  fontSize: AppConstants.largeFont),
            ),
          ]),
    );
  }
}
