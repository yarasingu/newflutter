// ignore_for_file: must_be_immutable

part of 'setting_preference_tab_container_bloc.dart';

class SettingPreferenceTabContainerState extends Equatable {
  SettingPreferenceTabContainerState({
    this.group420Controller,
    this.settingPreferenceTabContainerModelObj,
  });

  TextEditingController? group420Controller;

  SettingPreferenceTabContainerModel? settingPreferenceTabContainerModelObj;

  @override
  List<Object?> get props => [
        group420Controller,
        settingPreferenceTabContainerModelObj,
      ];
  SettingPreferenceTabContainerState copyWith({
    TextEditingController? group420Controller,
    SettingPreferenceTabContainerModel? settingPreferenceTabContainerModelObj,
  }) {
    return SettingPreferenceTabContainerState(
      group420Controller: group420Controller ?? this.group420Controller,
      settingPreferenceTabContainerModelObj:
          settingPreferenceTabContainerModelObj ??
              this.settingPreferenceTabContainerModelObj,
    );
  }
}
