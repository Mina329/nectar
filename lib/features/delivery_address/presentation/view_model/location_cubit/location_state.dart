part of 'location_cubit.dart';

@immutable
sealed class LocationState {}

final class LocationInitial extends LocationState {}
final class LocationLoading extends LocationState {}
final class LocationSuccess extends LocationState {}
final class LocationFailure extends LocationState {}
final class LocationRefreshFailure extends LocationState {}
final class LocationRefreshSuccess extends LocationState {}
final class LocationNameLoading extends LocationState {}
final class LocationNameSuccess extends LocationState {}
final class LocationNameFailure extends LocationState {}





