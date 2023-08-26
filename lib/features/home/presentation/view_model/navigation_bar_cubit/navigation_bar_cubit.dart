import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigation_bar_state.dart';

class NavigationBarCubit extends Cubit<NavigationBarState> {
  NavigationBarCubit() : super(NavigationBarInitial());
  int selectedIndex = 0;
  void changeIndex(int index) {
    selectedIndex = index;
    changeBody();
    print(index);
  }

  void changeBody() {
    emit(NavigationBarInitial());
    switch (selectedIndex) {
      case 0:
        emit(NavigationBarShop());
        break;
      case 1:
        emit(NavigationBarExplore());
        break;
      case 2:
        emit(NavigationBarCart());
        break;
      case 3:
        emit(NavigationBarFavourite());
        break;
      case 4:
        emit(NavigationBarAccount());
        break;
    }
  }
}
