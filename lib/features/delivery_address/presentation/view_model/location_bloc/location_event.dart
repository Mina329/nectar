part of 'location_bloc.dart';

@immutable
sealed class LocationEvent {}

class GetMyCurrentLocation extends LocationEvent {}

class RefreshMyCurrentLocation extends LocationEvent {}

class GetPlacemark extends LocationEvent {
  final double latitude;
  final double longitude;
  final String language;

  GetPlacemark(this.latitude, this.longitude, this.language);
}

class MapVisibility extends LocationEvent{}