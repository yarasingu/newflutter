// ignore_for_file: must_be_immutable

part of 'setting_edit_profile_bloc.dart';

@immutable
abstract class SettingEditProfileEvent extends Equatable {}

class SettingEditProfileInitialEvent extends SettingEditProfileEvent {
  @override
  List<Object?> get props => [];
}

class FetchMeEvent extends SettingEditProfileEvent {
  FetchMeEvent({required this.onFetchMeEventError});

  Function onFetchMeEventError;

  @override
  List<Object?> get props => [
        onFetchMeEventError,
      ];
}

///event for dropdown selection
class ChangeDropDownEvent extends SettingEditProfileEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
