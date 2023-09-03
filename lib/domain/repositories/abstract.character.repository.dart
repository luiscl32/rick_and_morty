import 'package:rick_and_morty/domain/models/characters.dart';

abstract class AbstractCharacterRepository {
  Future<Characters> onFetchCharacters();

  Future<Characters> onSearchCharacter({required String search});
  Future<Characters> onFilterCharacter(
      {required String search, required String filterType});
}
