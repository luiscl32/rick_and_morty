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
  Future<Character> onFetchCharacterDetail({required int id}) async {
    final Response res = await dio.get('$characterUrl/$id');
    final Character data = Character.fromJson(res.data);
    return data;
  }
}
