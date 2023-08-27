import 'package:flutter/material.dart';

import '../utils/color_manager.dart';

class CustomAddActionButton extends StatelessWidget {
  const CustomAddActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: ColorManager.primaryColorLight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Icon(Icons.add),
    );
  }
}
