import 'package:flutter/material.dart';
import 'package:flutter_task/component/estates_card.dart';
import 'package:flutter_task/component/fixed_button.dart';
import 'package:flutter_task/component/sliver_appbar.dart';
import 'package:flutter_task/component/text_row.dart';
import 'package:flutter_task/controller/home_controller.dart';
import 'package:flutter_task/enum/view_state.dart';
import 'package:flutter_task/helper/app_constants.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const FixedSliverAppBar(),
            const SliverToBoxAdapter(
                child: SizedBox(
              height: 10,
            )),
            SliverToBoxAdapter(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FixedButton(text: "للبيع"),
                FixedButton(text: "للايجار"),
                FixedButton(text: "حميع العقارات"),
              ],
            )),
            const SliverToBoxAdapter(
              child: TextRow(text: 'الاقل سعرا'),
            ),
            SliverToBoxAdapter(
                child: SizedBox(
              height: AppConstants.height * 0.42,
              child: Obx(
                () => controller.state == ViewState.busy
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : ListView.builder(
                        physics: const ClampingScrollPhysics(),
                        reverse: true,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.getLowestEstates.length,
                        padding: const EdgeInsets.all(10),
                        itemBuilder: (context, index) {
                          return EstatesCard(
                            image: controller
                                .getLowestEstates[index].featuredImage!.large,
                            name: controller.getLowestEstates[index].type!.name,
                            status: controller.getLowestEstates[index].status,
                            title: controller.getLowestEstates[index].title,
                            price: controller.getLowestEstates[index].price,
                            address: controller.getLowestEstates[index].address,
                            bedroom:
                                controller.getLowestEstates[index].bedrooms,
                            bathroom:
                                controller.getLowestEstates[index].bedrooms,
                            space: controller.getLowestEstates[index].size,
                          );
                        },
                      ),
              ),
            )),
            const SliverToBoxAdapter(
              child: TextRow(text: 'الاحدث '),
            ),
            SliverToBoxAdapter(
                child: SizedBox(
              height: AppConstants.height * 0.42,
              child: Obx(
                () => controller.state == ViewState.busy
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : ListView.builder(
                        physics: const ClampingScrollPhysics(),
                        reverse: true,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.getRecentEstates.length,
                        itemBuilder: (context, index) {
                          return EstatesCard(
                            image: controller
                                .getRecentEstates[index].featuredImage!.large,
                            name: controller.getRecentEstates[index].type!.name,
                            status: controller.getRecentEstates[index].status,
                            title: controller.getRecentEstates[index].title,
                            price: controller.getRecentEstates[index].price,
                            address: controller.getRecentEstates[index].address,
                            bedroom:
                                controller.getRecentEstates[index].bedrooms,
                            bathroom:
                                controller.getRecentEstates[index].bedrooms,
                            space: controller.getRecentEstates[index].size,
                          );
                        },
                      ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
