import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar/features/delivery_address/data/models/placemark/placemark.dart';

import '../../../data/repos/shop_repo.dart';

part 'city_country_state.dart';

class CityCountryCubit extends Cubit<CityCountryState> {
  CityCountryCubit(this._shopRepo) : super(CityCountryInitial());
  final ShopRepo _shopRepo;
  Future<void> getCityCountry(String language) async {
    emit(CityCountryLoading());
    var result = await _shopRepo.fetchCurrentCityCountry(language);
    result.fold(
      (failure) => emit(
        CityCountryFailure(
          failure.errMessage,
        ),
      ),
      (placemark) => emit(
        CityCountrySuccess(
          placemark,
        ),
      ),
    );
  }
}
