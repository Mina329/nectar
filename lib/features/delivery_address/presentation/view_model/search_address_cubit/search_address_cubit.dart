import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../data/models/search_address_suggestion/search_address_suggestion.dart';
import '../../../data/repos/delivery_address_repo.dart';

part 'search_address_state.dart';

class SearchAddressCubit extends Cubit<SearchAddressState> {
  SearchAddressCubit(this.deliveryAddressRepo, this.controller) : super(SearchAddressInitial());
  final DeliveryAddressRepo deliveryAddressRepo;
  final Completer<GoogleMapController> controller;

  Future<void> fetchSuggestions(
      String latitude, String longitude, String query) async {
    emit(SearchAddressLoading());
    var result = await deliveryAddressRepo.fetchSearchAddressSuggestion(
        latitude, longitude, query);
    result.fold(
      (failure) {
        emit(
          SearchAddressFailure(
            failure.errMessage,
          ),
        );
      },
      (suggestions) => emit(
        SearchAddressSuccess(
          suggestions,
        ),
      ),
    );
  }
}
