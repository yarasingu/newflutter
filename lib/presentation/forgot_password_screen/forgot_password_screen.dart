import 'bloc/forgot_password_bloc.dart';
import 'models/forgot_password_model.dart';
import 'package:flutter/material.dart';
import 'package:yarisingu_s_application2/core/app_export.dart';
import 'package:yarisingu_s_application2/widgets/custom_button.dart';
import 'package:yarisingu_s_application2/widgets/custom_text_form_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ForgotPasswordBloc>(
        create: (context) => ForgotPasswordBloc(
            ForgotPasswordState(forgotPasswordModelObj: ForgotPasswordModel()))
          ..add(ForgotPasswordInitialEvent()),
        child: ForgotPasswordScreen());
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
                          padding: getPadding(top: 85),
                          child: Text("lbl_forgot_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold28)),
                      Container(
                          width: getHorizontalSize(311),
                          margin: getMargin(top: 13, right: 31),
                          child: Text("msg_please_enter_your".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14)),
                      BlocSelector<ForgotPasswordBloc, ForgotPasswordState,
                              TextEditingController?>(
                          selector: (state) => state.frameThirtyController,
                          builder: (context, frameThirtyController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: frameThirtyController,
                                hintText: "lbl_email_id".tr,
                                margin: getMargin(top: 23),
                                variant: TextFormFieldVariant.FillIndigo60014,
                                shape: TextFormFieldShape.RoundedBorder15,
                                padding: TextFormFieldPadding.PaddingAll15,
                                fontStyle: TextFormFieldFontStyle.InterMedium16,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.emailAddress);
                          }),
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
      AppRoutes.otpScreen,
    );
  }
}
