import 'package:dio/dio.dart';
import 'package:rick_and_morty/data/config/api.dart';
import 'package:rick_and_morty/domain/models/locations.dart';
import 'package:rick_and_morty/domain/repositories/abstract.location.repository.dart';

class LocationRepository extends AbstractLocationRepository {
  final dio = Dio();
  final String locationUrl = '${ApiConfig.apiUrl}/location';

  @override
  Future<Locations> onFetchLocations() async {
    final Response res = await dio.get(locationUrl);
    final Locations data = Locations.fromJson(res.data);
    return data;
  }

  @override
  Future<Locations> onFilterLocations(
      {required String search, required String filterType}) async {
    final Response res = await dio.get('$locationUrl/?$filterType=$search');
    final Locations data = Locations.fromJson(res.data);
    return data;
  }

  @override
  Future<Locations> onSearchLocations({required String search}) async {
    final Response res = await dio.get('$locationUrl/?name=$search');
    final Locations data = Locations.fromJson(res.data);
    return data;
  }
}
