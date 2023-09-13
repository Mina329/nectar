import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpperCircleAnimation extends StatelessWidget {
  const UpperCircleAnimation({
    super.key,
    required this.circlesAnimationController,
    required this.upperCircleAnimation,
  });

  final AnimationController circlesAnimationController;
  final Animation<double> upperCircleAnimation;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 20.h,
      right: -10.w,
      child: AnimatedBuilder(
        animation: circlesAnimationController,
        builder: (context, child) => CustomPaint(
          painter: CirclePainter(upperCircleAnimation.value),
          size: Size.square(120.w),
        ),
      ),
    );
  }
}

class LowerCircleAnimation extends StatelessWidget {
  const LowerCircleAnimation({
    super.key,
    required this.circlesAnimationController,
    required this.lowerCircleAnimation,
  });

  final AnimationController circlesAnimationController;
  final Animation<double> lowerCircleAnimation;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      child: AnimatedBuilder(
        animation: circlesAnimationController,
        builder: (context, child) => CustomPaint(
          painter: CirclePainter(lowerCircleAnimation.value),
          size: Size.square(200.w),
        ),
      ),
    );
  }
}





class CirclePainter extends CustomPainter {
  final double _size;

  CirclePainter(this._size);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = const Color(0xffEDF2E6);
    paint.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), _size, paint);
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) {
    return _size != oldDelegate._size;
  }
}