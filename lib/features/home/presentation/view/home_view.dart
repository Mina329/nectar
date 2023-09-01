
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar/features/home/presentation/view_model/navigation_bar_cubit/navigation_bar_cubit.dart';
import '../../../../core/widgets/custom_navigation_bar.dart';
import '../../../account/presentation/view/account_view.dart';
import '../../../cart/presentation/view/cart_view.dart';
import '../../../explore/presentation/view/explore_view.dart';
import '../../../favourite/presentation/view/favourite_view.dart';
import '../../../shop/presentation/view/shop_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const Map<Type, Widget> _stateBodyMap = {
    NavigationBarInitial: ShopView(),
    NavigationBarShop: ShopView(),
    NavigationBarExplore: ExploreView(),
    NavigationBarCart: CartView(),
    NavigationBarFavourite: FavouriteView(),
    NavigationBarAccount: AccountView(),
  };

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationBarCubit(),
      child: BlocBuilder<NavigationBarCubit, NavigationBarState>(
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: true,
            bottomNavigationBar: CustomBottomNavigationBar(
              onItemTapped: (p0) =>
                  BlocProvider.of<NavigationBarCubit>(context).changeIndex(p0),
              selectedIndex:
                  BlocProvider.of<NavigationBarCubit>(context).selectedIndex,
            ),
            body: _stateBodyMap[state.runtimeType] ?? const SizedBox(),
          );
        },
      ),
    );
  }
}
