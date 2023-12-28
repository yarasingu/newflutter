// ignore_for_file: must_be_immutable

part of 'setting_security_bloc.dart';

@immutable
abstract class SettingSecurityEvent extends Equatable {}

class SettingSecurityInitialEvent extends SettingSecurityEvent {
  @override
  List<Object?> get props => [];
}
