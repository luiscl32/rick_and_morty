import 'package:dio/dio.dart';
import 'package:rick_and_morty/data/config/api.dart';
import 'package:rick_and_morty/domain/models/episodes.dart';
import 'package:rick_and_morty/domain/repositories/abstract.episode.repository.dart';

class EpisodeRepository extends AbstractEpisodeRepository {
  final dio = Dio();
  final episodeUrl = '${ApiConfig.apiUrl}/episode';

  @override
  Future<Episodes> onFetchEpisodes() async {
    final Response res = await dio.get(episodeUrl);
    final Episodes data = Episodes.fromJson(res.data);
    return data;
  }

  @override
  Future<Episodes> onFilterEpisodes(
      {required String search, required String filterType}) async {
    final Response res = await dio.get('$episodeUrl/?$filterType=$search');
    final Episodes data = Episodes.fromJson(res.data);
    return data;
  }

  @override
  Future<Episodes> onSearchEpisodes({required String search}) async {
    final Response res = await dio.get('$episodeUrl/?name=$search');
    final Episodes data = Episodes.fromJson(res.data);
    return data;
  }
}
