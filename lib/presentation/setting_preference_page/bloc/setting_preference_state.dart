// ignore_for_file: must_be_immutable

part of 'setting_preference_bloc.dart';

class SettingPreferenceState extends Equatable {
  SettingPreferenceState({
    this.currencyOneController,
    this.timezoneOneController,
    this.settingPreferenceModelObj,
  });

  TextEditingController? currencyOneController;

  TextEditingController? timezoneOneController;

  SettingPreferenceModel? settingPreferenceModelObj;

  @override
  List<Object?> get props => [
        currencyOneController,
        timezoneOneController,
        settingPreferenceModelObj,
      ];
  SettingPreferenceState copyWith({
    TextEditingController? currencyOneController,
    TextEditingController? timezoneOneController,
    SettingPreferenceModel? settingPreferenceModelObj,
  }) {
    return SettingPreferenceState(
      currencyOneController:
          currencyOneController ?? this.currencyOneController,
      timezoneOneController:
          timezoneOneController ?? this.timezoneOneController,
      settingPreferenceModelObj:
          settingPreferenceModelObj ?? this.settingPreferenceModelObj,
    );
  }
}
