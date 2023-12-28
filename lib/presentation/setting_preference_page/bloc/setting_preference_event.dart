// ignore_for_file: must_be_immutable

part of 'setting_preference_bloc.dart';

@immutable
abstract class SettingPreferenceEvent extends Equatable {}

class SettingPreferenceInitialEvent extends SettingPreferenceEvent {
  @override
  List<Object?> get props => [];
}
