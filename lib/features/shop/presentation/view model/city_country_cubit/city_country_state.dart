part of 'city_country_cubit.dart';

sealed class CityCountryState extends Equatable {
  const CityCountryState();

  @override
  List<Object> get props => [];
}

final class CityCountryInitial extends CityCountryState {}

final class CityCountryLoading extends CityCountryState {}

final class CityCountryFailure extends CityCountryState {
  final String errMessage;

  const CityCountryFailure(this.errMessage);
}

final class CityCountrySuccess extends CityCountryState {
  final Placemark placemark;

  const CityCountrySuccess(this.placemark);
}
