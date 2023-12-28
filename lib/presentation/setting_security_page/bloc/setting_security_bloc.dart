import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yarisingu_s_application2/presentation/setting_security_page/models/setting_security_model.dart';
part 'setting_security_event.dart';
part 'setting_security_state.dart';

class SettingSecurityBloc
    extends Bloc<SettingSecurityEvent, SettingSecurityState> {
  SettingSecurityBloc(SettingSecurityState initialState) : super(initialState) {
    on<SettingSecurityInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SettingSecurityInitialEvent event,
    Emitter<SettingSecurityState> emit,
  ) async {
    emit(state.copyWith(
      currentpasswordvalueController: TextEditingController(),
      currentpasswordvalueOneController: TextEditingController(),
    ));
  }
}
