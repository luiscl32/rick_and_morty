import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/data/repositories/character.repository.dart';
import 'package:rick_and_morty/domain/models/characters.dart';

part 'characters_state.dart';
part 'characters_cubit.freezed.dart';

class CharactersCubit extends Cubit<CharactersState> {
  CharactersCubit() : super(const CharactersState.initial());

  final CharacterRepository repository = CharacterRepository();

  void fetchCharacters() {
    emit(const CharactersState.loading());
    repository.onFetchCharacters().then((data) {
      emit(CharactersState.loaded(data: data));
    }).catchError((onError) {
      emit(const CharactersState.error());
    });
  }
}
