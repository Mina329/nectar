// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'package:nectar/core/utils/assets_manager.dart';
import 'package:nectar/features/shop/data/models/grocery_item_model/image.dart'
    as image_model;

import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../../favourite/presentation/view model/favourite_items_cubit/favourite_items_cubit.dart';

class ItemImageSection extends StatefulWidget {
  const ItemImageSection({
    Key? key,
    required this.images,
    required this.fromFavourite,
    required this.thumbnailImage,
  }) : super(key: key);
  final List<image_model.Image>? images;
  final String? thumbnailImage;
  final bool fromFavourite;
  @override
  State<ItemImageSection> createState() => _ItemImageSectionState();
}

class _ItemImageSectionState extends State<ItemImageSection> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
    modifiedImages = List<image_model.Image>.from(widget.images ?? []);
    if (widget.thumbnailImage != null) {
      modifiedImages.insert(
          0, image_model.Image(id: null, image: widget.thumbnailImage));
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  late List<image_model.Image> modifiedImages;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 372.h,
        width: 414.w,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          color: Theme.of(context).hoverColor,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 25.w,
          ),
          child: Stack(
            children: [
              _buildPageView(),
              _buildDotsIndicator(),
              _buildBackButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPageView() {
    return PageView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: modifiedImages.isEmpty ? 1 : modifiedImages.length,
      controller: _pageController,
      itemBuilder: (context, index) => Center(
        child: SizedBox(
          width: 364.w,
          height: 250.h,
          child: modifiedImages.isEmpty
              ? Image.asset(AssetsManager.errorAlt)
              : CachedNetworkImage(
                  imageUrl: modifiedImages[index].image!,
                  errorWidget: (context, error, stackTrace) =>
                      Image.asset(AssetsManager.errorAlt),
                  placeholder: (context, url) =>
                      const CustomCircularIndicator(),
                ),
        ),
      ),
    );
  }

  Widget _buildDotsIndicator() {
    return Positioned(
      bottom: 30.h,
      left: 0,
      right: 0,
      child: DotsIndicator(
        dotsCount: modifiedImages.isEmpty ? 1 : modifiedImages.length,
        position: _currentPage,
        decorator: DotsDecorator(
          activeColor: Theme.of(context).brightness == Brightness.light
              ? ColorManager.green
              : ColorManager.darkBlueBackground,
          size: const Size.square(9.0),
          activeSize: const Size(18.0, 9.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return Positioned(
      top: 50.h,
      child: IconButton(
        onPressed: () {
          if (widget.fromFavourite) {
            BlocProvider.of<FavouriteItemsCubit>(context).getFavouriteItems();
          }
          GoRouter.of(context).pop();
        },
        icon: const Icon(
          Icons.arrow_back_ios_rounded,
        ),
      ),
    );
  }
}
