part of 'locations_cubit.dart';

@freezed
class LocationsState with _$LocationsState {
  const factory LocationsState.initial() = _Initial;
  const factory LocationsState.loading() = _Loading;
  const factory LocationsState.loaded({required Locations data}) = _Loaded;
  const factory LocationsState.error() = _Error;
}
