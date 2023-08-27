import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'banner_item.dart';

class BannerListView extends StatefulWidget {
  const BannerListView({Key? key}) : super(key: key);

  @override
  _BannerListViewState createState() => _BannerListViewState();
}

class _BannerListViewState extends State<BannerListView> {
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
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.12,
        child: Stack(
          children: [
            PageView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              controller: _pageController,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 10),
                child: BannerItem(index: index),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: DotsIndicator(
                dotsCount: 3,
                position: _currentPage,
                decorator: DotsDecorator(
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
