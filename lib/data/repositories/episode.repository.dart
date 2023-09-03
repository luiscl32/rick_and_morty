import 'package:dio/dio.dart';
import 'package:rick_and_morty/data/config/api.dart';
import 'package:rick_and_morty/domain/models/episodes.dart';
import 'package:rick_and_morty/domain/repositories/abstract.episode.repository.dart';

class EpisodeRepository extends AbstractEpisodeRepository {
  final dio = Dio();
  final episodeUrl = '${ApiConfig.apiUrl}/episode';

  @override
  Future<Episode> onFetchEpisodeDetail({required int id}) async {
    final Response res = await dio.get('$episodeUrl/$id');
    final Episode data = Episode.fromJson(res.data);
    return data;
  }

  @override
  Future<Episodes> onFetchEpisodes() async {
    final Response res = await dio.get(episodeUrl);
    final Episodes data = Episodes.fromJson(res.data);
    return data;
  }
}
