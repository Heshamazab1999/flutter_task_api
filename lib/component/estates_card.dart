import 'package:flutter/material.dart';
import 'package:flutter_task/component/icon_text.dart';
import 'package:flutter_task/component/load_image.dart';
import 'package:flutter_task/helper/app_constants.dart';
import 'package:flutter_task/helper/images.dart';

class EstatesCard extends StatelessWidget {
  const EstatesCard(
      {Key? key,
      this.image,
      this.price,
      this.title,
      this.address,
      this.bathroom,
      this.bedroom,
      this.name,
      this.status,
      this.space})
      : super(key: key);
  final String? image;
  final String? name;
  final String? status;
  final String? title;
  final String? price;
  final String? address;
  final String? bedroom;
  final String? bathroom;
  final String? space;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: AppConstants.width * 0.42,
          child: Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(10),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  height: AppConstants.height * 0.15,
                  width: AppConstants.width * 0.45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: LoadImage(
                    image: image,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 25,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: AppConstants.mainColor,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(4),
                            topRight: Radius.circular(4)),
                      ),
                      child: Center(
                        child: Text(status ?? '',
                            style: const TextStyle(color: Colors.white)),
                      ),
                    ),
                    Row(
                      children: [
                        Text(name ?? '',
                            style: const TextStyle(color: Colors.black)),
                        const SizedBox(width: 5),
                        Container(
                          width: 8,
                          height: 20,
                          decoration: const BoxDecoration(
                            color: AppConstants.mainColor,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(4),
                                topLeft: Radius.circular(4)),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Text(title ?? '',
                        textAlign: TextAlign.end,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: const TextStyle(color: AppConstants.mainColor)),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Text(price ?? '',
                        textAlign: TextAlign.end,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: const TextStyle(color: AppConstants.blackColor)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(address ?? '',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: const TextStyle(
                              fontSize: AppConstants.smallFont,
                              color: Colors.black)),
                    ),
                    Image.asset(
                      Images.location,
                      width: 20,
                      height: 20,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconText(
                        icon: Images.bathIcon,
                        text: bathroom ?? '',
                      ),
                      IconText(
                        icon: Images.bed,
                        text: bedroom ?? '',
                      ),
                      IconText(
                        icon: Images.space,
                        text: space ?? '',
                      ),
                    ],
                  ),
                )
              ])),
        ));
  }
}
