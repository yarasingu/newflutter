import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:yarisingu_s_application2/core/app_export.dart';
import 'package:yarisingu_s_application2/widgets/custom_button.dart';
import 'package:yarisingu_s_application2/widgets/custom_text_form_field.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 13, right: 16, bottom: 13),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleftIndigo600,
                          height: getSize(24),
                          width: getSize(24),
                          margin: getMargin(left: 10),
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Padding(
                          padding: getPadding(top: 82),
                          child: Text("msg_welcome_to_firstbank".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold28)),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Text("msg_login_your_account".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14)),
                      BlocSelector<LoginBloc, LoginState,
                              TextEditingController?>(
                          selector: (state) => state.emailidController,
                          builder: (context, emailidController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: emailidController,
                                hintText: "lbl_email_id".tr,
                                margin: getMargin(top: 22),
                                variant: TextFormFieldVariant.FillIndigo60014,
                                shape: TextFormFieldShape.RoundedBorder15,
                                padding: TextFormFieldPadding.PaddingAll15,
                                fontStyle: TextFormFieldFontStyle.InterMedium16,
                                textInputType: TextInputType.emailAddress);
                          }),
                      BlocBuilder<LoginBloc, LoginState>(
                          builder: (context, state) {
                        return CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: state.passwordController,
                            hintText: "lbl_password".tr,
                            margin: getMargin(top: 16),
                            variant: TextFormFieldVariant.FillIndigo60014,
                            shape: TextFormFieldShape.RoundedBorder15,
                            padding: TextFormFieldPadding.PaddingT14,
                            fontStyle: TextFormFieldFontStyle.InterMedium16,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            suffix: InkWell(
                                onTap: () {
                                  context.read<LoginBloc>().add(
                                      ChangePasswordVisibilityEvent(
                                          value: !state.isShowPassword));
                                },
                                child: Container(
                                    margin: getMargin(
                                        left: 30,
                                        top: 13,
                                        right: 20,
                                        bottom: 13),
                                    child: CustomImageView(
                                        svgPath: state.isShowPassword
                                            ? ImageConstant
                                                .imgCheckmarkBlueGray400
                                            : ImageConstant
                                                .imgCheckmarkBlueGray400))),
                            suffixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(50)),
                            isObscureText: state.isShowPassword);
                      }),
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtForgotPassword(context);
                              },
                              child: Padding(
                                  padding: getPadding(top: 16),
                                  child: Text("msg_forgot_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium16)))),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "lbl_log_in2".tr,
                          margin: getMargin(top: 38, bottom: 5),
                          shape: ButtonShape.CircleBorder25,
                          padding: ButtonPadding.PaddingAll14,
                          fontStyle: ButtonFontStyle.InterRegular18,
                          onTap: () {
                            onTapLogin(context);
                          })
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapTxtForgotPassword(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.otpScreen,
    );
  }

  onTapLogin(BuildContext context) {
    context.read<LoginBloc>().add(
          CreateLoginEvent(
            onCreateLoginEventSuccess: () {
              _onCreateLoginEventSuccess(context);
            },
            onCreateLoginEventError: () {
              _onCreateLoginEventError(context);
            },
          ),
        );
  }

  void _onCreateLoginEventSuccess(BuildContext context) {
    NavigatorService.popAndPushNamed(AppRoutes.homeScreen, arguments: {
      NavigationArgs.id: context.read<LoginBloc>().postLoginResp.data!.id!
    });
  }

  void _onCreateLoginEventError(BuildContext context) {
    Fluttertoast.showToast(
      msg: "Invalid username or password!",
    );
  }
}
