// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

class LoginState extends Equatable {
  LoginState({
    this.emailidController,
    this.passwordController,
    this.isShowPassword = true,
    this.loginModelObj,
  });

  TextEditingController? emailidController;

  TextEditingController? passwordController;

  LoginModel? loginModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailidController,
        passwordController,
        isShowPassword,
        loginModelObj,
      ];
  LoginState copyWith({
    TextEditingController? emailidController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      emailidController: emailidController ?? this.emailidController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}
