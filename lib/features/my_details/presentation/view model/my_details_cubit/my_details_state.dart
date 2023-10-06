part of 'my_details_cubit.dart';

sealed class MyDetailsState extends Equatable {
  const MyDetailsState();

  @override
  List<Object> get props => [];
}

final class MyDetailsInitial extends MyDetailsState {}

final class MyDetailsLoading extends MyDetailsState {}

final class MyDetailsInfoFailure extends MyDetailsState {
  final String errMessage;

  const MyDetailsInfoFailure(this.errMessage);
}

final class MyDetailsInfoSuccess extends MyDetailsState {
  final String successMessage;

  const MyDetailsInfoSuccess(this.successMessage);
}

final class MyDetailsImgFailure extends MyDetailsState {
  final String errMessage;

  const MyDetailsImgFailure(this.errMessage);
}

final class MyDetailsImgSuccess extends MyDetailsState {
  final String successMessage;

  const MyDetailsImgSuccess(this.successMessage);
}
