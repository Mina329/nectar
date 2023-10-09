import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';
import 'package:nectar/core/utils/strings_manager.dart';

import '../../../data/models/thumbnail_grocery_item_model/thumbnail_grocery_item_model/thumbnail_grocery_item_model.dart';
import '../../../data/repos/shop_repo.dart';
import '../../view/shop view/shop_view.dart';

part 'section_details_state.dart';

class SectionDetailsCubit extends Cubit<SectionDetailsState> {
  SectionDetailsCubit(this.shopRepo, this.sectionType)
      : super(SectionDetailsInitial());
  final ShopRepo shopRepo;
  final SectionType sectionType;

  Map<SectionType, String?> orderBy = {
    SectionType.bestSelling: "orderCount",
    SectionType.exclusiveOffer: "offerPrice",
    SectionType.groceries: null
  };

  Map<SectionType, String> sectionName = {
    SectionType.bestSelling: StringsManager.bestSelling.tr(),
    SectionType.exclusiveOffer: StringsManager.exlusiveOffer.tr(),
    SectionType.groceries: StringsManager.groceries.tr()
  };

  int page = 1;
  Future<void> loadItems() async {
    if (state is SectionDetailsLoading) return;
    final currentState = state;
    List<ThumbnailGroceryItemModel> oldItems = [];
    if (currentState is SectionDetailsSuccess) {
      oldItems = currentState.items;
    }
    emit(
      SectionDetailsLoading(oldItems, isFirstFetch: page == 1),
    );
    var result = await shopRepo.fetchAllGroceryItems(
      orderBy: orderBy[sectionType],
      perPage: "15",
      page: "$page",
    );
    result.fold(
        (failure) => emit(
              SectionDetailsFailure(
                failure.errMessage,
              ),
            ), (newItems) {
      page++;
      final items = (state as SectionDetailsLoading).oldItems;
      items.addAll(newItems);
      emit(
        SectionDetailsSuccess(
          items,
        ),
      );
    });
  }
}
