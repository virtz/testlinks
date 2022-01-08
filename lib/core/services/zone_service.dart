import 'package:ajeo/core/models/area_model.dart';
import 'package:ajeo/core/models/auth_models/error_model.dart';
import 'package:ajeo/core/models/auth_models/success_model.dart';
import 'package:ajeo/core/models/price_option.dart';
import 'package:ajeo/core/models/zone.dart';
import 'package:ajeo/core/services/index.dart';
import 'package:ajeo/utils/paths.dart';

class ZoneService {
  //fix later
  getZones() async {
    final result = await http.get(Paths.GET_ZONES);
    if (result is ErrorModel) {
      return ErrorModel(result.error);
    }
    if (result is SuccessModel) {
      var data = result.data;
      List<Zone> zones = List.from(data.map((item) => Zone.fromJson(item)));

      return SuccessModel(zones);
    }
  }

  getPricePerZone(String zoneId) async {
    final result = await http.get(Paths.GET_PRICE_PER_ZONE + "/$zoneId");
    if (result is ErrorModel) {
      return ErrorModel(result.error);
    }
    if (result is SuccessModel) {
      var data = result.data['price_options'];
      // print(" fron zone service ::::$data");
      PriceOption po = PriceOption.fromJson(data);
      return SuccessModel(po);
    }
  }

  getAreasInZone(String? id) async {
    final result = await http.get(Paths.GET_AREAS_IN_ZONE + "/$id/area");
    if (result is ErrorModel) {
      return ErrorModel(result.error);
    }
    if (result is SuccessModel) {
      var data = result.data;
      List<AreaModel> areas =
          List.from(data.map((item) => AreaModel.fromJson(item)));
      return SuccessModel(areas);
    }
  }
}
