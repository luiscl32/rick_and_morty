import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/data/repositories/location.repository.dart';

import 'package:rick_and_morty/domain/models/locations.dart';

part 'locations_state.dart';
part 'locations_cubit.freezed.dart';

class LocationsCubit extends Cubit<LocationsState> {
  LocationsCubit() : super(const LocationsState.initial());

  final LocationRepository repository = LocationRepository();

  void fetchLocations() {
    emit(const LocationsState.loading());
    repository.onFetchLocations().then((data) {
      emit(LocationsState.loaded(data: data));
    }).catchError((onError) {
      emit(const LocationsState.error());
    });
  }

  void searchLocations({required String search}) {
    emit(const LocationsState.loading());
    repository.onSearchLocations(search: search).then((data) {
      emit(LocationsState.loaded(data: data));
    }).catchError((onError) {
      emit(const LocationsState.error());
    });
  }

  void filterLocations({required String search, required String filterType}) {
    emit(const LocationsState.loading());
    repository
        .onFilterLocations(filterType: filterType, search: search)
        .then((data) {
      emit(LocationsState.loaded(data: data));
    }).catchError((onError) {
      emit(const LocationsState.error());
    });
  }
}
