import 'package:cached_network_image/cached_network_image.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/assets_manager.dart';
import 'package:nectar/features/shop/data/models/grocery_item_model/image.dart'
    as image_model;

import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/widgets/custom_loading_indicator.dart';

class ItemImageSection extends StatefulWidget {
  const ItemImageSection({
    Key? key,
    required this.images,
  }) : super(key: key);
  final List<image_model.Image>? images;
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
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

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
      itemCount: widget.images!.isEmpty ? 1 : widget.images!.length,
      controller: _pageController,
      itemBuilder: (context, index) => Center(
        child: SizedBox(
          width: 364.w,
          height: 250.h,
          child: widget.images!.isEmpty
              ? Image.asset(AssetsManager.errorAlt)
              : CachedNetworkImage(
                  imageUrl: widget.images![index].image!,
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
        dotsCount: widget.images!.isEmpty ? 1 : widget.images!.length,
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
          GoRouter.of(context).pop();
        },
        icon: const Icon(
          Icons.arrow_back_ios_rounded,
        ),
      ),
    );
  }
}
