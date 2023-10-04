part of 'best_selling_cubit.dart';

sealed class BestSellingState extends Equatable {
  const BestSellingState();

  @override
  List<Object> get props => [];
}

final class BestSellingInitial extends BestSellingState {}

final class BestSellingLoading extends BestSellingState {}

final class BestSellingSuccess extends BestSellingState {
  final List<CategoryItemModel> items;

  const BestSellingSuccess(this.items);
}

final class BestSellingFailure extends BestSellingState {
  final String errMessage;

  const BestSellingFailure(this.errMessage);
}
