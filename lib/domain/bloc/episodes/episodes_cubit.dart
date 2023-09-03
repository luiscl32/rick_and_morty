import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/data/repositories/episode.repository.dart';
import 'package:rick_and_morty/domain/models/episodes.dart';

part 'episodes_state.dart';
part 'episodes_cubit.freezed.dart';

class EpisodesCubit extends Cubit<EpisodesState> {
  EpisodesCubit() : super(const EpisodesState.initial());

  final EpisodeRepository repository = EpisodeRepository();

  void fetchEpisodes() {
    emit(const EpisodesState.loading());
    repository.onFetchEpisodes().then((data) {
      emit(EpisodesState.loaded(data: data));
    }).catchError((onError) {
      emit(const EpisodesState.error());
    });
  }

  void searchEpisodes({required String search}) {
    emit(const EpisodesState.loading());
    repository.onSearchEpisodes(search: search).then((data) {
      emit(EpisodesState.loaded(data: data));
    }).catchError((onError) {
      emit(const EpisodesState.error());
    });
  }

  void filterEpisodes({required String search, required String filterType}) {
    emit(const EpisodesState.loading());
    repository
        .onFilterEpisodes(filterType: filterType, search: search)
        .then((data) {
      emit(EpisodesState.loaded(data: data));
    }).catchError((onError) {
      emit(const EpisodesState.error());
    });
  }
}
