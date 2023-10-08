part of 'location_bloc.dart';

@immutable
sealed class LocationState {}

final class LocationInitial extends LocationState {}

final class GetMyCurrentLocationLoading extends LocationState {}

final class GetMyCurrentLocationSuccess extends LocationState {
  final LatLng location;

  GetMyCurrentLocationSuccess(this.location);
}

final class GetMyCurrentLocationFailure extends LocationState {
  final String errMessage;

  GetMyCurrentLocationFailure(this.errMessage);
}

final class RefreshMyCurrentLocationFailure extends LocationState {
  final String errMessage;

  RefreshMyCurrentLocationFailure(this.errMessage);
}

final class RefreshMyCurrentLocationSuccess extends LocationState {
  final LatLng location;

  RefreshMyCurrentLocationSuccess(this.location);
}

final class PlacemarkLoading extends LocationState {}

final class PlacemarkSuccess extends LocationState {
  final Placemark placemark;

  PlacemarkSuccess(this.placemark);
}

final class PlacemarkFailure extends LocationState {
  final String errMessage;

  PlacemarkFailure(this.errMessage);
}
