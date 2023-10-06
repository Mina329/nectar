import 'dart:io';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/repos/my_details_repo.dart';
part 'my_details_state.dart';

class MyDetailsCubit extends Cubit<MyDetailsState> {
  MyDetailsCubit(this._myDetailsRepo) : super(MyDetailsInitial());

  final MyDetailsRepo _myDetailsRepo;

  Future<void> updateProfileInfo(
      String? firstName, String? lastName, String? dateOfBirth) async {
    emit(MyDetailsLoading());
    var infoResult = await _myDetailsRepo.patchUpdateAccountInfo(
        firstName, lastName, dateOfBirth);
    infoResult.fold(
      (failure) => emit(
        MyDetailsInfoFailure(
          failure.errMessage,
        ),
      ),
      (response) => emit(
        MyDetailsInfoSuccess(
          response.data['message'],
        ),
      ),
    );
  }

  Future<void> updateProfileImg(File img) async {
    emit(MyDetailsLoading());
    var infoResult = await _myDetailsRepo.postUpdateProfilePicture(img);
    infoResult.fold(
      (failure) => emit(
        MyDetailsImgFailure(
          failure.errMessage,
        ),
      ),
      (response) => emit(
        MyDetailsImgSuccess(
          response.data['message'],
        ),
      ),
    );
  }
}
