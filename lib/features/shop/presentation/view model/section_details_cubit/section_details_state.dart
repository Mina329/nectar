part of 'section_details_cubit.dart';

sealed class SectionDetailsState extends Equatable {
  const SectionDetailsState();

  @override
  List<Object> get props => [];
}

final class SectionDetailsInitial extends SectionDetailsState {}

final class SectionDetailsSuccess extends SectionDetailsState {
  final List<ThumbnailGroceryItemModel> items;

  const SectionDetailsSuccess(this.items);
}

final class SectionDetailsLoading extends SectionDetailsState {
  final List<ThumbnailGroceryItemModel> oldItems;
  final bool isFirstFetch;

  const SectionDetailsLoading(this.oldItems, {required this.isFirstFetch});
}

final class SectionDetailsFailure extends SectionDetailsState {
  final String errMessage;

  const SectionDetailsFailure(this.errMessage);
}
