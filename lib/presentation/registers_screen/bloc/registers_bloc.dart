import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yarisingu_s_application2/presentation/registers_screen/models/registers_model.dart';
import 'package:yarisingu_s_application2/data/models/register/post_register_resp.dart';
import 'package:yarisingu_s_application2/data/models/register/post_register_req.dart';
import 'dart:async';
import 'package:yarisingu_s_application2/data/repository/repository.dart';
import 'package:yarisingu_s_application2/core/constants/role.dart';
part 'registers_event.dart';
part 'registers_state.dart';

class RegistersBloc extends Bloc<RegistersEvent, RegistersState> {
  RegistersBloc(RegistersState initialState) : super(initialState) {
    on<RegistersInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<CreateRegisterEvent>(_callCreateRegister);
  }

  final _repository = Repository();

  var postRegisterResp = PostRegisterResp();

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<RegistersState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _onInitialize(
    RegistersInitialEvent event,
    Emitter<RegistersState> emit,
  ) async {
    emit(state.copyWith(
        frameThirtyController: TextEditingController(),
        frameThirtyTwoController: TextEditingController(),
        frameThirtyOneController: TextEditingController(),
        frameThirtyTwoOneController: TextEditingController(),
        isShowPassword: true));
  }

  FutureOr<void> _callCreateRegister(
    CreateRegisterEvent event,
    Emitter<RegistersState> emit,
  ) async {
    var postRegisterReq = PostRegisterReq(
      username: state.frameThirtyOneController?.text,
      password: state.frameThirtyTwoOneController?.text,
      email: state.frameThirtyOneController?.text,
      name: state.frameThirtyController?.text,
      role: Role.user,
    );
    await _repository.createRegister(
      headers: {
        'Content-Type': 'application/json',
      },
      requestData: postRegisterReq.toJson(),
    ).then((value) async {
      postRegisterResp = value;
      _onCreateRegisterSuccess(value, emit);
      event.onCreateRegisterEventSuccess.call();
    }).onError((error, stackTrace) {
      //implement error call
      _onCreateRegisterError();
      event.onCreateRegisterEventError.call();
    });
  }

  void _onCreateRegisterSuccess(
    PostRegisterResp resp,
    Emitter<RegistersState> emit,
  ) {
    PrefUtils().setId(resp.data!.id!.toString());
    emit(
      state.copyWith(
        registersModelObj: state.registersModelObj?.copyWith(),
      ),
    );
  }

  void _onCreateRegisterError() {
    //implement error method body...
  }
}
