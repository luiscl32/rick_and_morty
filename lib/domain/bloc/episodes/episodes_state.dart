part of 'episodes_cubit.dart';

@freezed
class EpisodesState with _$EpisodesState {
  const factory EpisodesState.initial() = _Initial;
  const factory EpisodesState.loading() = _Loading;
  const factory EpisodesState.loaded({required Episodes data}) = _Loaded;
  const factory EpisodesState.error() = _Error;
}
