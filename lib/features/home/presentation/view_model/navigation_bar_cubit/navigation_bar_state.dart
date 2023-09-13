part of 'navigation_bar_cubit.dart';

@immutable
sealed class NavigationBarState {}

final class NavigationBarShop extends NavigationBarState {}
final class NavigationBarExplore extends NavigationBarState {}
final class NavigationBarCart extends NavigationBarState {}
final class NavigationBarFavourite extends NavigationBarState {}
final class NavigationBarAccount extends NavigationBarState {}
