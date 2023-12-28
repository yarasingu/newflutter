// ignore_for_file: must_be_immutable

part of 'forgot_password_bloc.dart';

class ForgotPasswordState extends Equatable {
  ForgotPasswordState({
    this.frameThirtyController,
    this.forgotPasswordModelObj,
  });

  TextEditingController? frameThirtyController;

  ForgotPasswordModel? forgotPasswordModelObj;

  @override
  List<Object?> get props => [
        frameThirtyController,
        forgotPasswordModelObj,
      ];
  ForgotPasswordState copyWith({
    TextEditingController? frameThirtyController,
    ForgotPasswordModel? forgotPasswordModelObj,
  }) {
    return ForgotPasswordState(
      frameThirtyController:
          frameThirtyController ?? this.frameThirtyController,
      forgotPasswordModelObj:
          forgotPasswordModelObj ?? this.forgotPasswordModelObj,
    );
  }
}
