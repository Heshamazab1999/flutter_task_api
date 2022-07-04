import 'package:flutter_task/helper/app_constants.dart';
import 'package:flutter_task/helper/dio_integration.dart';
import 'package:flutter_task/model/estates_model.dart';

class HomeServices {
  final dio = DioUtilNew.dio;

  Future<List<EstatesModel>?> getRecentEstates() async {
    try {
      final response = await dio!.get(AppConstants.getRecent);
      if (response.statusCode == 200) {
        final mList = List<EstatesModel>.from(
            response.data.map((i) => EstatesModel.fromJson(i)));
        print(mList.length);

        return mList;
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<List<EstatesModel>?> getLowestEstates() async {
    try {
      final response = await dio!.get(AppConstants.getLowest);
      if (response.statusCode == 200) {
        final mList = List<EstatesModel>.from(
            response.data.map((i) => EstatesModel.fromJson(i)));
        print(mList.length);
        return mList;
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
