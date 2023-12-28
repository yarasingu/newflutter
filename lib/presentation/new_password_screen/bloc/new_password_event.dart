// ignore_for_file: must_be_immutable

part of 'new_password_bloc.dart';

@immutable
abstract class NewPasswordEvent extends Equatable {}

class NewPasswordInitialEvent extends NewPasswordEvent {
  @override
  List<Object?> get props => [];
}

///event for change password visibility
class ChangePasswordVisibilityEvent extends NewPasswordEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for change password visibility
class ChangePasswordVisibilityEvent1 extends NewPasswordEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
