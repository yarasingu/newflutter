import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yarisingu_s_application2/presentation/setting_preference_tab_container_screen/models/setting_preference_tab_container_model.dart';
part 'setting_preference_tab_container_event.dart';
part 'setting_preference_tab_container_state.dart';

class SettingPreferenceTabContainerBloc extends Bloc<
    SettingPreferenceTabContainerEvent, SettingPreferenceTabContainerState> {
  SettingPreferenceTabContainerBloc(
      SettingPreferenceTabContainerState initialState)
      : super(initialState) {
    on<SettingPreferenceTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SettingPreferenceTabContainerInitialEvent event,
    Emitter<SettingPreferenceTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      group420Controller: TextEditingController(),
    ));
  }
}
