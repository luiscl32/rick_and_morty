import 'package:rick_and_morty/domain/models/characters.dart';

abstract class AbstractCharacterRepository {
  Future<Characters> onFetchCharacters();
  Future<Character> onFetchCharacterDetail({required int id});
}
