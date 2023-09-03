import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/domain/models/characters.dart';

part 'character_state.dart';
part 'character_cubit.freezed.dart';

class CharacterCubit extends Cubit<CharacterState> {
  CharacterCubit() : super(CharacterState.initial());
}
