// ignore_for_file: must_be_immutable

part of 'registers_bloc.dart';

@immutable
abstract class RegistersEvent extends Equatable {}

class RegistersInitialEvent extends RegistersEvent {
  @override
  List<Object?> get props => [];
}

class CreateRegisterEvent extends RegistersEvent {
  CreateRegisterEvent({
    required this.onCreateRegisterEventSuccess,
    required this.onCreateRegisterEventError,
  });

  Function onCreateRegisterEventSuccess;

  Function onCreateRegisterEventError;

  @override
  List<Object?> get props => [
        onCreateRegisterEventSuccess,
        onCreateRegisterEventError,
      ];
}

///event for change password visibility
class ChangePasswordVisibilityEvent extends RegistersEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
