// ignore_for_file: must_be_immutable

part of 'setting_preference_tab_container_bloc.dart';

@immutable
abstract class SettingPreferenceTabContainerEvent extends Equatable {}

class SettingPreferenceTabContainerInitialEvent
    extends SettingPreferenceTabContainerEvent {
  @override
  List<Object?> get props => [];
}
