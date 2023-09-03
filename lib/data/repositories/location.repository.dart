import 'package:dio/dio.dart';
import 'package:rick_and_morty/data/config/api.dart';
import 'package:rick_and_morty/domain/models/locations.dart';
import 'package:rick_and_morty/domain/repositories/abstract.location.repository.dart';

class LocationRepository extends AbstractLocationRepository {
  final dio = Dio();
  final String locationUrl = '${ApiConfig.apiUrl}/location';

  @override
  Future<Location> onFetchLocationDetail({required int id}) async {
    final Response res = await dio.get('$locationUrl/$id');
    final Location data = Location.fromJson(res.data);
    return data;
  }

  @override
  Future<Locations> onFetchLocations() async {
    final Response res = await dio.get(locationUrl);
    final Locations data = Locations.fromJson(res.data);
    return data;
  }
}
