// ignore_for_file: must_be_immutable

part of 'otp_bloc.dart';

@immutable
abstract class OtpEvent extends Equatable {}

class OtpInitialEvent extends OtpEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends OtpEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
