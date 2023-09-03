import 'package:rick_and_morty/domain/models/episodes.dart';
import 'package:rick_and_morty/domain/repositories/abstract.episode.repository.dart';

class EpisodeRepository extends AbstractEpisodeRepository {
  @override
  Future<Episode> onFetchEpisodeDetail({required int id}) {
    // TODO: implement onFetchEpisodeDetail
    throw UnimplementedError();
  }

  @override
  Future<Episodes> onFetchEpisodes() {
    // TODO: implement onFetchEpisodes
    throw UnimplementedError();
  }
}
