import 'bloc/get_started_bloc.dart';
import 'models/get_started_model.dart';
import 'package:flutter/material.dart';
import 'package:yarisingu_s_application2/core/app_export.dart';
import 'package:yarisingu_s_application2/widgets/custom_button.dart';
import 'package:yarisingu_s_application2/domain/googleauth/google_auth_helper.dart';

class GetStartedScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<GetStartedBloc>(
        create: (context) => GetStartedBloc(
            GetStartedState(getStartedModelObj: GetStartedModel()))
          ..add(GetStartedInitialEvent()),
        child: GetStartedScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetStartedBloc, GetStartedState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.gray100,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 16, top: 119, right: 16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("msg_lets_get_started".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterSemiBold28),
                        Container(
                            width: getHorizontalSize(220),
                            margin: getMargin(top: 16),
                            child: Text("msg_find_the_right_and".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium14)),
                        CustomButton(
                            height: getVerticalSize(50),
                            text: "lbl_login".tr,
                            margin: getMargin(top: 20),
                            variant: ButtonVariant.FillIndigo60014,
                            shape: ButtonShape.RoundedBorder15,
                            padding: ButtonPadding.PaddingAll14,
                            fontStyle: ButtonFontStyle.InterMedium16,
                            onTap: () {
                              onTapLogin(context);
                            }),
                        CustomButton(
                            height: getVerticalSize(50),
                            text: "lbl_register".tr,
                            margin: getMargin(top: 16),
                            variant: ButtonVariant.FillIndigo60014,
                            shape: ButtonShape.RoundedBorder15,
                            padding: ButtonPadding.PaddingAll14,
                            fontStyle: ButtonFontStyle.InterMedium16,
                            onTap: () {
                              onTapRegister(context);
                            }),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: getPadding(top: 25),
                                child: Text("msg_or_use_instant_sign".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold12))),
                        GestureDetector(
                            onTap: () {
                              onTapRowgoogle(context);
                            },
                            child: Container(
                                margin: getMargin(top: 24),
                                padding: getPadding(
                                    left: 16, top: 9, right: 16, bottom: 9),
                                decoration: AppDecoration.outlineBluegray400
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder15),
                                child: Row(children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgGoogleBlueA200,
                                      height: getSize(32),
                                      width: getSize(32)),
                                  Padding(
                                      padding: getPadding(
                                          left: 55, top: 6, bottom: 5),
                                      child: Text("msg_sign_with_google".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterBold16))
                                ]))),
                        Container(
                            margin: getMargin(top: 24, bottom: 5),
                            padding: getPadding(
                                left: 16, top: 9, right: 16, bottom: 9),
                            decoration: AppDecoration.outlineBluegray400
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder15),
                            child: Row(children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgUserBlueGray90001,
                                  height: getSize(32),
                                  width: getSize(32)),
                              Padding(
                                  padding:
                                      getPadding(left: 60, top: 6, bottom: 5),
                                  child: Text("lbl_sign_with_apple".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold16))
                            ]))
                      ]))));
    });
  }

  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }

  onTapRegister(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registersScreen,
    );
  }

  onTapRowgoogle(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
