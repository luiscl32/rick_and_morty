import 'package:rick_and_morty/domain/models/locations.dart';

abstract class AbstractLocationRepository {
  Future<Locations> onFetchLocations();
  Future<Location> onFetchLocationDetail({required int id});
}
