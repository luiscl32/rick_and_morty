import 'package:rick_and_morty/domain/models/characters.dart';
import 'package:rick_and_morty/domain/repositories/abstract.character.repository.dart';

class CharacterRepository extends AbstractCharacterRepository {
  @override
  Future<Characters> onFetchCharacters() {
    // TODO: implement onFetchCharacters
    throw UnimplementedError();
  }

  @override
  Future<Character> onFetchCharacterDetail({required int id}) {
    // TODO: implement onFetchCharacterDetail
    throw UnimplementedError();
  }
}
