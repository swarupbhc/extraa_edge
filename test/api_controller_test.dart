import 'package:extraa_edge/controllers/api_controller.dart';
import 'package:extraa_edge/models/rocket_details_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

class MockClient extends Mock implements http.Client {}

void main() {
  group('ApiService', () {
    late MockClient client;
    late ApiController apiService;

    setUp(() {
      client = MockClient();
      apiService = ApiController();
    });

    test('should return rocket details data when HTTP request is successful',
        () async {
      // arrange
      const id = '5e9d0d95eda69955f709d1eb';
      final expectedData = RocketDetailsModel(rocketId: id, name: 'rocket1');
      final response = http.Response('{"id": "$id", "name": "rocket1"}', 200);
      when(client.get(Uri.https('api.spacexdata.com', '/v4/rockets/$id')))
          .thenAnswer((_) async => response);

      // act
      final result = await apiService.getRocketDetails(id);

      // assert
      expect(result, expectedData);
      verify(client.get(Uri.https('api.spacexdata.com', '/v4/rockets/$id')));
    });

    test('should throw an error when HTTP request fails', () async {
      // arrange
      const id = '5e9d0d95eda69955f709d1eb';
      when(client.get(Uri.https('api.spacexdata.com', '/v4/rockets/$id')))
          .thenAnswer((_) async => http.Response('Error', 404));

      // act & assert
      expect(() => apiService.getRocketDetails(id), throwsException);
      verify(client.get(Uri.https('api.spacexdata.com', '/v4/rockets/$id')));
    });
  });
}
