import 'bloc/otp_bloc.dart';
import 'models/otp_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:yarisingu_s_application2/core/app_export.dart';
import 'package:yarisingu_s_application2/widgets/custom_button.dart';

class OtpScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<OtpBloc>(
        create: (context) =>
            OtpBloc(OtpState(otpModelObj: OtpModel()))..add(OtpInitialEvent()),
        child: OtpScreen());
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
                          child: Text("lbl_enter_otp".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold28)),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Text("msg_code_has_been_send".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14)),
                      Padding(
                          padding: getPadding(top: 22),
                          child: BlocSelector<OtpBloc, OtpState,
                                  TextEditingController?>(
                              selector: (state) => state.otpController,
                              builder: (context, otpController) {
                                return PinCodeTextField(
                                    appContext: context,
                                    controller: otpController,
                                    length: 4,
                                    obscureText: false,
                                    obscuringCharacter: '*',
                                    keyboardType: TextInputType.number,
                                    autoDismissKeyboard: true,
                                    enableActiveFill: true,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    onChanged: (value) {
                                      otpController?.text = value;
                                    },
                                    textStyle: TextStyle(
                                        color: ColorConstant.blueGray900,
                                        fontSize: getFontSize(28),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700),
                                    pinTheme: PinTheme(
                                        fieldHeight: getHorizontalSize(60),
                                        fieldWidth: getHorizontalSize(60),
                                        shape: PinCodeFieldShape.box,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(15)),
                                        selectedFillColor:
                                            ColorConstant.indigo60014,
                                        activeFillColor:
                                            ColorConstant.indigo60014,
                                        inactiveFillColor:
                                            ColorConstant.indigo60014,
                                        inactiveColor:
                                            ColorConstant.fromHex("#1212121D"),
                                        selectedColor:
                                            ColorConstant.fromHex("#1212121D"),
                                        activeColor: ColorConstant.fromHex(
                                            "#1212121D")));
                              })),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "lbl_continue".tr,
                          margin: getMargin(top: 40, bottom: 5),
                          shape: ButtonShape.CircleBorder25,
                          padding: ButtonPadding.PaddingAll14,
                          fontStyle: ButtonFontStyle.InterRegular18,
                          onTap: () {
                            onTapContinue(context);
                          })
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapContinue(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.newPasswordScreen,
    );
  }
}
