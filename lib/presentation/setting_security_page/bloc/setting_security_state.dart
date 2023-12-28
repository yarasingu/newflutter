// ignore_for_file: must_be_immutable

part of 'setting_security_bloc.dart';

class SettingSecurityState extends Equatable {
  SettingSecurityState({
    this.currentpasswordvalueController,
    this.currentpasswordvalueOneController,
    this.settingSecurityModelObj,
  });

  TextEditingController? currentpasswordvalueController;

  TextEditingController? currentpasswordvalueOneController;

  SettingSecurityModel? settingSecurityModelObj;

  @override
  List<Object?> get props => [
        currentpasswordvalueController,
        currentpasswordvalueOneController,
        settingSecurityModelObj,
      ];
  SettingSecurityState copyWith({
    TextEditingController? currentpasswordvalueController,
    TextEditingController? currentpasswordvalueOneController,
    SettingSecurityModel? settingSecurityModelObj,
  }) {
    return SettingSecurityState(
      currentpasswordvalueController:
          currentpasswordvalueController ?? this.currentpasswordvalueController,
      currentpasswordvalueOneController: currentpasswordvalueOneController ??
          this.currentpasswordvalueOneController,
      settingSecurityModelObj:
          settingSecurityModelObj ?? this.settingSecurityModelObj,
    );
  }
}
