import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar/features/home/presentation/view_model/navigation_bar_cubit/navigation_bar_cubit.dart';
import '../../../../core/widgets/custom_navigation_bar.dart';
import '../../../account/presentation/view/account_view.dart';
import '../../../cart/presentation/view/cart_view.dart';
import '../../../explore/presentation/view/explore_view.dart';
import '../../../favourite/presentation/view/favourite_view.dart';
import '../../../shop/presentation/view/shop_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final Map<Type, Widget> _stateBodyMap = {
    NavigationBarShop: const ShopView(),
    NavigationBarExplore: const ExploreView(),
    NavigationBarCart: const CartView(),
    NavigationBarFavourite: const FavouriteView(),
    NavigationBarAccount: const AccountView(),
  };

  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationBarCubit(),
      child: BlocBuilder<NavigationBarCubit, NavigationBarState>(
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: true,
            bottomNavigationBar: CustomBottomNavigationBar(
              onItemTapped: (p0) {
                BlocProvider.of<NavigationBarCubit>(context).changeIndex(p0);
                pageController.jumpToPage(p0);
              },
              selectedIndex:
                  BlocProvider.of<NavigationBarCubit>(context).selectedIndex,
            ),
            body: PageView.builder(
              physics: const BouncingScrollPhysics(),
              controller: pageController,
              itemCount: _stateBodyMap.length,
              itemBuilder: (context, index) =>
                  _stateBodyMap.values.toList()[index],
              onPageChanged: (value) {
                BlocProvider.of<NavigationBarCubit>(context).changeIndex(value);
              },
            ),
          );
        },
      ),
    );
  }
}
