part of 'search_address_cubit.dart';

sealed class SearchAddressState extends Equatable {
  const SearchAddressState();

  @override
  List<Object> get props => [];
}

final class SearchAddressInitial extends SearchAddressState {}
final class SearchAddressSuccess extends SearchAddressState {
  final SearchAddressSuggestion suggestions;

  const SearchAddressSuccess(this.suggestions);
}
final class SearchAddressFailure extends SearchAddressState {
  final String errMessage;

  const SearchAddressFailure(this.errMessage);
}
final class SearchAddressLoading extends SearchAddressState {}

