import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar/features/account/data/repos/account_repo.dart';
import 'package:nectar/features/account/presentation/view%20model/account_info_cubit/account_info_cubit.dart';
import 'package:nectar/features/cart/data/repos/cart_repo.dart';
import 'package:nectar/features/cart/presentation/view%20model/cart_cubit/cart_cubit.dart';
import 'package:nectar/features/cart/presentation/view%20model/checkout_cubit/checkout_cubit.dart';
import 'package:nectar/features/favourite/presentation/view%20model/add_favourite_items_to_cart_cubit/add_favourite_items_to_cart_cubit.dart';
import 'package:nectar/features/favourite/presentation/view%20model/favourite_items_cubit/favourite_items_cubit.dart';
import 'package:nectar/features/home/presentation/view_model/navigation_bar_cubit/navigation_bar_cubit.dart';
import 'package:nectar/features/shop/data/repos/shop_repo.dart';
import 'package:nectar/features/shop/presentation/view%20model/best_selling_cubit/best_selling_cubit.dart';
import 'package:nectar/features/shop/presentation/view%20model/city_country_cubit/city_country_cubit.dart';
import 'package:nectar/features/shop/presentation/view%20model/exclusive_offers_cubit/exclusive_offers_cubit.dart';
import 'package:nectar/features/shop/presentation/view%20model/groceries_section_cubit/groceries_section_cubit.dart';
import '../../../../core/cache/cache_helper.dart';
import '../../../../core/cache/cache_keys_values.dart';
import '../../../../core/utils/service_locator.dart';
import '../../../../core/widgets/custom_navigation_bar.dart';
import '../../../account/presentation/view/account view/account_view.dart';
import '../../../auth/data/repos/auth_repo.dart';
import '../../../auth/presentation/view model/google_auth_cubit/google_auth_cubit.dart';
import '../../../cart/presentation/view/cart_view.dart';
import '../../../explore/data/repos/explore_repo.dart';
import '../../../explore/presentation/view model/categories_cubit/categories_cubit.dart';
import '../../../explore/presentation/view/explore view/explore_view.dart';
import '../../../favourite/data/repos/favourite_repo.dart';
import '../../../favourite/presentation/view/favourite_view.dart';
import '../../../shop/presentation/view model/add_to_cart_cubit/add_to_cart_cubit.dart';
import '../../../shop/presentation/view/shop view/shop_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final Map<Type, Widget> _stateBodyMap = {
    NavigationBarShop: MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ExclusiveOffersCubit(
            getIt.get<ShopRepo>(),
          )..getExclusiveOffersItems(filter: null),
        ),
        BlocProvider(
          create: (context) => CategoriesCubit(
            getIt.get<ExploreRepo>(),
          )..fetchCategories(),
        ),
        BlocProvider(
          create: (context) => GroceriesSectionCubit(
            getIt.get<ShopRepo>(),
          )..getAllItems(filter: null),
        ),
        BlocProvider(
          create: (context) => BestSellingCubit(
            getIt.get<ShopRepo>(),
          )..getBestSellingItems(filter: null),
        ),
        BlocProvider(
          create: (context) => CityCountryCubit(
            getIt.get<ShopRepo>(),
          )..getCityCountry(
              CacheData.getData(key: CacheKeys.kLANGUAGE) == CacheValues.ARABIC
                  ? "ar"
                  : "en"),
        ),
        BlocProvider(
          create: (context) => AddToCartCubit(
            getIt.get<CartRepo>(),
          ),
        )
      ],
      child: const ShopView(),
    ),
    NavigationBarExplore: MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CategoriesCubit(
            getIt.get<ExploreRepo>(),
          )..fetchCategories(),
        ),
        BlocProvider(
          create: (context) => AddToCartCubit(
            getIt.get<CartRepo>(),
          ),
        )
      ],
      child: const ExploreView(),
    ),
    NavigationBarCart: MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CartCubit(
            getIt.get<CartRepo>(),
          )..getCart(),
        ),
        BlocProvider(
          create: (context) => CheckoutCubit(
            getIt.get<CartRepo>(),
          ),
        ),
      ],
      child: const CartView(),
    ),
    NavigationBarFavourite: MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FavouriteItemsCubit(
            getIt.get<FavouriteRepo>(),
          )..getFavouriteItems(),
        ),
        BlocProvider(
          create: (context) => AddFavouriteItemsToCartCubit(
            getIt.get<CartRepo>(),
          ),
        )
      ],
      child: const FavouriteView(),
    ),
    NavigationBarAccount: MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AccountInfoCubit(
            getIt.get<AccountRepo>(),
          ),
        ),
        BlocProvider(
          create: (context) => GoogleAuthCubit(
            getIt.get<AuthRepo>(),
          ),
        )
      ],
      child: const AccountView(),
    ),
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
