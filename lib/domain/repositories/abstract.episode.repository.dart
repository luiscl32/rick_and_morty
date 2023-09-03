import 'package:rick_and_morty/domain/models/episodes.dart';

abstract class AbstractEpisodeRepository {
  Future<Episodes> onFetchEpisodes();
  Future<Episodes> onSearchEpisodes({required String search});
  Future<Episodes> onFilterEpisodes(
      {required String search, required String filterType});
  Future<Episodes> onFetchMoreEpisodes({required int page});
}
