import 'package:rick_and_morty/domain/models/episodes.dart';

abstract class AbstractEpisodeRepository {
  Future<Episodes> onFetchEpisodes();
  Future<Episode> onFetchEpisodeDetail({required int id});
}
