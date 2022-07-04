import 'package:flutter_task/controller/base_controller.dart';
import 'package:flutter_task/enum/view_state.dart';
import 'package:flutter_task/model/estates_model.dart';
import 'package:flutter_task/services/home_services.dart';
import 'package:get/get.dart';

class HomeController extends BaseController {
  final _homeServices = HomeServices();
  final getLowestEstates = <EstatesModel>[].obs;
  final getRecentEstates = <EstatesModel>[].obs;

  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    super.onInit();
    setSate(ViewState.busy);
    getLowestEstates.value = (await _homeServices.getLowestEstates())!;
    getRecentEstates.value = (await _homeServices.getRecentEstates())!;
    setSate(ViewState.idle);
  }

}
