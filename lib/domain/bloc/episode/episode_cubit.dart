import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode_state.dart';
part 'episode_cubit.freezed.dart';

class EpisodeCubit extends Cubit<EpisodeState> {
  EpisodeCubit() : super(EpisodeState.initial());
}
