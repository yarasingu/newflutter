import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yarisingu_s_application2/presentation/new_password_screen/models/new_password_model.dart';
part 'new_password_event.dart';
part 'new_password_state.dart';

class NewPasswordBloc extends Bloc<NewPasswordEvent, NewPasswordState> {
  NewPasswordBloc(NewPasswordState initialState) : super(initialState) {
    on<NewPasswordInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<NewPasswordState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _changePasswordVisibility1(
    ChangePasswordVisibilityEvent1 event,
    Emitter<NewPasswordState> emit,
  ) {
    emit(state.copyWith(isShowPassword1: event.value));
  }

  _onInitialize(
    NewPasswordInitialEvent event,
    Emitter<NewPasswordState> emit,
  ) async {
    emit(state.copyWith(
        newpasswordController: TextEditingController(),
        confirmpasswordController: TextEditingController(),
        isShowPassword: true,
        isShowPassword1: true));
  }
}
