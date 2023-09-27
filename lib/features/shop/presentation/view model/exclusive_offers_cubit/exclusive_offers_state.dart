part of 'exclusive_offers_cubit.dart';

sealed class ExclusiveOffersState extends Equatable {
  const ExclusiveOffersState();

  @override
  List<Object> get props => [];
}

final class ExclusiveOffersInitial extends ExclusiveOffersState {}

final class ExclusiveOffersLoading extends ExclusiveOffersState {}

final class ExclusiveOffersSuccess extends ExclusiveOffersState {
  final List<CategoryItemModel> items;

  const ExclusiveOffersSuccess(this.items);
}

final class ExclusiveOffersFailure extends ExclusiveOffersState {
  final String errMessage;

  const ExclusiveOffersFailure(this.errMessage);
}
