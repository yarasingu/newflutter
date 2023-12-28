import 'bloc/registers_bloc.dart';
import 'models/registers_model.dart';
import 'package:flutter/material.dart';
import 'package:yarisingu_s_application2/core/app_export.dart';
import 'package:yarisingu_s_application2/widgets/custom_button.dart';
import 'package:yarisingu_s_application2/widgets/custom_text_form_field.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegistersScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<RegistersBloc>(
        create: (context) =>
            RegistersBloc(RegistersState(registersModelObj: RegistersModel()))
              ..add(RegistersInitialEvent()),
        child: RegistersScreen());
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
                          child: Text("msg_create_a_new_account".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold28)),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Text("msg_it_s_fast_and_easy".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14)),
                      Padding(
                          padding: getPadding(top: 22, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: BlocSelector<
                                            RegistersBloc,
                                            RegistersState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.frameThirtyController,
                                        builder:
                                            (context, frameThirtyController) {
                                          return CustomTextFormField(
                                              focusNode: FocusNode(),
                                              controller: frameThirtyController,
                                              hintText: "lbl_first_name".tr,
                                              margin: getMargin(right: 8),
                                              variant: TextFormFieldVariant
                                                  .FillIndigo60014,
                                              shape: TextFormFieldShape
                                                  .RoundedBorder15,
                                              padding: TextFormFieldPadding
                                                  .PaddingAll15,
                                              fontStyle: TextFormFieldFontStyle
                                                  .InterMedium16);
                                        })),
                                Expanded(
                                    child: BlocSelector<
                                            RegistersBloc,
                                            RegistersState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.frameThirtyTwoController,
                                        builder: (context,
                                            frameThirtyTwoController) {
                                          return CustomTextFormField(
                                              focusNode: FocusNode(),
                                              controller:
                                                  frameThirtyTwoController,
                                              hintText: "lbl_last_name".tr,
                                              margin: getMargin(left: 8),
                                              variant: TextFormFieldVariant
                                                  .FillIndigo60014,
                                              shape: TextFormFieldShape
                                                  .RoundedBorder15,
                                              padding: TextFormFieldPadding
                                                  .PaddingAll15,
                                              fontStyle: TextFormFieldFontStyle
                                                  .InterMedium16);
                                        }))
                              ])),
                      BlocSelector<RegistersBloc, RegistersState,
                              TextEditingController?>(
                          selector: (state) => state.frameThirtyOneController,
                          builder: (context, frameThirtyOneController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: frameThirtyOneController,
                                hintText: "lbl_email_id".tr,
                                margin: getMargin(top: 16),
                                variant: TextFormFieldVariant.FillIndigo60014,
                                shape: TextFormFieldShape.RoundedBorder15,
                                padding: TextFormFieldPadding.PaddingAll15,
                                fontStyle: TextFormFieldFontStyle.InterMedium16,
                                textInputType: TextInputType.emailAddress);
                          }),
                      BlocBuilder<RegistersBloc, RegistersState>(
                          builder: (context, state) {
                        return CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: state.frameThirtyTwoOneController,
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
                                  context.read<RegistersBloc>().add(
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
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "lbl_registers".tr,
                          margin: getMargin(top: 40, bottom: 5),
                          shape: ButtonShape.CircleBorder25,
                          padding: ButtonPadding.PaddingAll14,
                          fontStyle: ButtonFontStyle.InterRegular18,
                          onTap: () {
                            onTapRegisters(context);
                          })
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapRegisters(BuildContext context) {
    context.read<RegistersBloc>().add(
          CreateRegisterEvent(
            onCreateRegisterEventSuccess: () {
              _onCreateRegisterEventSuccess(context);
            },
            onCreateRegisterEventError: () {
              _onCreateRegisterEventError(context);
            },
          ),
        );
  }

  void _onCreateRegisterEventSuccess(BuildContext context) {
    NavigatorService.popAndPushNamed(AppRoutes.homeScreen, arguments: {
      NavigationArgs.id:
          context.read<RegistersBloc>().postRegisterResp.data!.id!
    });
  }

  void _onCreateRegisterEventError(BuildContext context) {
    Fluttertoast.showToast(
      msg: context.read<RegistersBloc>().postRegisterResp.message!.toString(),
    );
  }
}
