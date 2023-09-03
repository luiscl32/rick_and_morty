import 'package:rick_and_morty/domain/models/locations.dart';
import 'package:rick_and_morty/domain/repositories/abstract.location.repository.dart';

class LocationRepository extends AbstractLocationRepository {
  @override
  Future<Location> onFetchLocationDetail({required int id}) {
    // TODO: implement onFetchLocationDetail
    throw UnimplementedError();
  }

  @override
  Future<Locations> onFetchLocations() {
    // TODO: implement onFetchLocations
    throw UnimplementedError();
  }
}
