import 'package:extraa_edge/models/rocket_details_model.dart';
import 'package:extraa_edge/models/rockets_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:isar/isar.dart';

class ApiController {
  static const _baseUrl = "api.spacexdata.com";
  static const _getRockets = "/v4/rockets/";
  static const _getRocketDetails = "/v4/rockets/";

  Future<List<RocketsModel>> getRockets() async {
    try {
      final isar = Isar.getInstance();
      var cachedData = await isar!.rocketsModels.where().findAll();
      if (cachedData.isNotEmpty) {
        return cachedData;
      } else {
        var response = await http.get(Uri.https(_baseUrl, _getRockets));
        var data = rocketsModelFromJson(response.body);
        await isar.writeTxn(() async {
          await isar.rocketsModels.putAll(data);
        });
        return data;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<RocketDetailsModel> getRocketDetails(String id) async {
    try {
      var response =
          await http.get(Uri.https(_baseUrl, "$_getRocketDetails$id"));
      var data = rocketDetailsModelFromJson(response.body);
      return data;
    } catch (e) {
      rethrow;
    }
  }
}

final apiProvider = Provider<ApiController>((ref) {
  return ApiController();
});
