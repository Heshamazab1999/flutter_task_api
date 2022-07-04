import 'package:flutter/material.dart';
import 'package:flutter_task/helper/app_constants.dart';
import 'package:flutter_task/helper/images.dart';

class FixedSliverAppBar extends StatelessWidget {
  const FixedSliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      actions: const [
        Icon(
          Icons.menu,
          color: AppConstants.mainColor,
        ),
        SizedBox(width: 20),
      ],
      pinned: true,
      expandedHeight: 250,
      floating: true,
      flexibleSpace: FlexibleSpaceBar(
          title: Image.asset(Images.logo, height: 100, width: 100),
          centerTitle: true,
          background: Container(
            decoration: const BoxDecoration(
              color: AppConstants.whiteColor,
              image: DecorationImage(
                image: AssetImage(Images.egypt),
                fit: BoxFit.cover,
              ),
            ),

          )),
    );
  }
}
