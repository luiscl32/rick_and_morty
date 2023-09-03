part of 'characters_cubit.dart';

@freezed
class CharactersState with _$CharactersState {
  const factory CharactersState.initial() = _Initial;
  const factory CharactersState.loading() = _Loading;
  const factory CharactersState.loaded({required Characters data}) = _Loaded;
  const factory CharactersState.error() = _Error;
}
