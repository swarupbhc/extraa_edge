import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../controllers/api_controller.dart';

final rocketListFutureProvider = FutureProvider((ref) async {
  final apiService = ref.read(apiProvider);
  return apiService.getRockets();
});

final rocketDetailsFutureProvider =
    FutureProvider.family((ref, String id) async {
  final apiService = ref.read(apiProvider);
  return apiService.getRocketDetails(id);
});
