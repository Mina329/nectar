import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nectar/features/my_details/presentation/view%20model/my_details_cubit/my_details_cubit.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/strings_manager.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../../core/widgets/custom_toast_widget.dart';
import '../../../../account/data/models/account_model/account_model/account_model.dart';
import '../../../../account/presentation/view model/account_info_cubit/account_info_cubit.dart';

class MyDetailsImg extends StatefulWidget {
  const MyDetailsImg({super.key, required this.account});
  final AccountModel account;
  @override
  State<MyDetailsImg> createState() => _MyDetailsImgState();
}

class _MyDetailsImgState extends State<MyDetailsImg> {
  File? _imageFile;
  Future<void> _getImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30),
            ),
          ),
          builder: (context) => Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.w,
              vertical: 30.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).pop();
                    _getImage(ImageSource.gallery);
                  },
                  child: Icon(
                    Icons.image,
                    color: ColorManager.green,
                    size: 50.sp,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).pop();
                    _getImage(ImageSource.camera);
                  },
                  child: Icon(
                    Icons.camera_alt,
                    color: ColorManager.green,
                    size: 50.sp,
                  ),
                ),
              ],
            ),
          ),
        );
      },
      child: Stack(
        children: [
          Center(
            child: CircleAvatar(
              radius: 64.w,
              backgroundColor: ColorManager.green,
              backgroundImage: _imageFile != null
                  ? FileImage(_imageFile!)
                  : (widget.account.profilePicture != null
                      ? CachedNetworkImageProvider(
                          widget.account.profilePicture!)
                      : null) as ImageProvider<Object>?,
            ),
          ),
          Positioned(
            left: 207.w,
            bottom: 0,
            child: CircleAvatar(
              radius: 16,
              backgroundColor: ColorManager.green,
              child: Icon(
                Icons.add_a_photo,
                size: 20.sp,
                color: ColorManager.whiteText,
              ),
            ),
          ),
          if (_imageFile != null)
            Positioned(
                right: 40.w,
                top: 40.h,
                child: BlocListener<MyDetailsCubit, MyDetailsState>(
                  listener: (context, state) {
                    if (state is MyDetailsLoading) {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return const CustomLoadingIndicator();
                        },
                      );
                    } else if (state is MyDetailsImgFailure) {
                      GoRouter.of(context).pop();
                      GoRouter.of(context).pop();
                      CustomToastWidget.buildCustomToast(
                          context, state.errMessage, ToastType.failure, 200.h);
                    } else if (state is MyDetailsImgSuccess) {
                      GoRouter.of(context).pop();
                      GoRouter.of(context).pop();
                      CustomToastWidget.buildCustomToast(context,
                          state.successMessage, ToastType.success, 200.h);
                      BlocProvider.of<AccountInfoCubit>(context)
                          .getUserProfile();
                    }
                  },
                  child: TextButton(
                    onPressed: () {
                      BlocProvider.of<MyDetailsCubit>(context)
                          .updateProfileImg(_imageFile!);
                    },
                    child: Text(
                      StringsManager.save.tr(),
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: ColorManager.green,
                          ),
                    ),
                  ),
                ))
        ],
      ),
    );
  }
}
