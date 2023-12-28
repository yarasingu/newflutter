// ignore_for_file: must_be_immutable

part of 'setting_edit_profile_bloc.dart';

class SettingEditProfileState extends Equatable {
  SettingEditProfileState({
    this.languageController,
    this.languageOneController,
    this.emailOneController,
    this.passwordOneController,
    this.group572Controller,
    this.group572OneController,
    this.group572TwoController,
    this.zipcodeController,
    this.group572ThreeController,
    this.selectedDropDownValue,
    this.settingEditProfileModelObj,
  });

  TextEditingController? languageController;

  TextEditingController? languageOneController;

  TextEditingController? emailOneController;

  TextEditingController? passwordOneController;

  TextEditingController? group572Controller;

  TextEditingController? group572OneController;

  TextEditingController? group572TwoController;

  TextEditingController? zipcodeController;

  TextEditingController? group572ThreeController;

  SelectionPopupModel? selectedDropDownValue;

  SettingEditProfileModel? settingEditProfileModelObj;

  @override
  List<Object?> get props => [
        languageController,
        languageOneController,
        emailOneController,
        passwordOneController,
        group572Controller,
        group572OneController,
        group572TwoController,
        zipcodeController,
        group572ThreeController,
        selectedDropDownValue,
        settingEditProfileModelObj,
      ];
  SettingEditProfileState copyWith({
    TextEditingController? languageController,
    TextEditingController? languageOneController,
    TextEditingController? emailOneController,
    TextEditingController? passwordOneController,
    TextEditingController? group572Controller,
    TextEditingController? group572OneController,
    TextEditingController? group572TwoController,
    TextEditingController? zipcodeController,
    TextEditingController? group572ThreeController,
    SelectionPopupModel? selectedDropDownValue,
    SettingEditProfileModel? settingEditProfileModelObj,
  }) {
    return SettingEditProfileState(
      languageController: languageController ?? this.languageController,
      languageOneController:
          languageOneController ?? this.languageOneController,
      emailOneController: emailOneController ?? this.emailOneController,
      passwordOneController:
          passwordOneController ?? this.passwordOneController,
      group572Controller: group572Controller ?? this.group572Controller,
      group572OneController:
          group572OneController ?? this.group572OneController,
      group572TwoController:
          group572TwoController ?? this.group572TwoController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      group572ThreeController:
          group572ThreeController ?? this.group572ThreeController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      settingEditProfileModelObj:
          settingEditProfileModelObj ?? this.settingEditProfileModelObj,
    );
  }
}
