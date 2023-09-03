import 'package:rick_and_morty/domain/models/locations.dart';

abstract class AbstractLocationRepository {
  Future<Locations> onFetchLocations();
  Future<Locations> onSearchLocations({required String search});
  Future<Locations> onFilterLocations(
      {required String search, required String filterType});
  Future<Locations> onFetchMoreLocations({required int page});
}
