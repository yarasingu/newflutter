// ignore_for_file: must_be_immutable

part of 'registers_bloc.dart';

class RegistersState extends Equatable {
  RegistersState({
    this.frameThirtyController,
    this.frameThirtyTwoController,
    this.frameThirtyOneController,
    this.frameThirtyTwoOneController,
    this.isShowPassword = true,
    this.registersModelObj,
  });

  TextEditingController? frameThirtyController;

  TextEditingController? frameThirtyTwoController;

  TextEditingController? frameThirtyOneController;

  TextEditingController? frameThirtyTwoOneController;

  RegistersModel? registersModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        frameThirtyController,
        frameThirtyTwoController,
        frameThirtyOneController,
        frameThirtyTwoOneController,
        isShowPassword,
        registersModelObj,
      ];
  RegistersState copyWith({
    TextEditingController? frameThirtyController,
    TextEditingController? frameThirtyTwoController,
    TextEditingController? frameThirtyOneController,
    TextEditingController? frameThirtyTwoOneController,
    bool? isShowPassword,
    RegistersModel? registersModelObj,
  }) {
    return RegistersState(
      frameThirtyController:
          frameThirtyController ?? this.frameThirtyController,
      frameThirtyTwoController:
          frameThirtyTwoController ?? this.frameThirtyTwoController,
      frameThirtyOneController:
          frameThirtyOneController ?? this.frameThirtyOneController,
      frameThirtyTwoOneController:
          frameThirtyTwoOneController ?? this.frameThirtyTwoOneController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      registersModelObj: registersModelObj ?? this.registersModelObj,
    );
  }
}
