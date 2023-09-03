import 'package:dio/dio.dart';
import 'package:rick_and_morty/data/config/api.dart';
import 'package:rick_and_morty/domain/models/characters.dart';
import 'package:rick_and_morty/domain/repositories/abstract.character.repository.dart';

class CharacterRepository extends AbstractCharacterRepository {
  final dio = Dio();
  final String characterUrl = '${ApiConfig.apiUrl}/character';

  @override
  Future<Characters> onFetchCharacters() async {
    final Response res = await dio.get(characterUrl);
    final Characters data = Characters.fromJson(res.data);
    return data;
  }

  @override
  Future<Characters> onSearchCharacter({required String search}) async {
    final Response res = await dio.get('$characterUrl?name=$search');
    final Characters data = Characters.fromJson(res.data);
    return data;
  }

  @override
  Future<Characters> onFilterCharacter(
      {required String search, required String filterType}) async {
    final Response res = await dio.get('$characterUrl?$filterType=$search');
    final Characters data = Characters.fromJson(res.data);
    return data;
  }
}
