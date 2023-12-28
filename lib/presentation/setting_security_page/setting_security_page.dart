import 'bloc/setting_security_bloc.dart';
import 'models/setting_security_model.dart';
import 'package:flutter/material.dart';
import 'package:yarisingu_s_application2/core/app_export.dart';
import 'package:yarisingu_s_application2/widgets/custom_button.dart';
import 'package:yarisingu_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SettingSecurityPage extends StatefulWidget {
  @override
  _SettingSecurityPageState createState() => _SettingSecurityPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SettingSecurityBloc>(
      create: (context) => SettingSecurityBloc(SettingSecurityState(
        settingSecurityModelObj: SettingSecurityModel(),
      ))
        ..add(SettingSecurityInitialEvent()),
      child: SettingSecurityPage(),
    );
  }
}

class _SettingSecurityPageState extends State<SettingSecurityPage>
    with AutomaticKeepAliveClientMixin<SettingSecurityPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 20,
                    top: 21,
                    right: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "msg_two_factor_auth".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterMedium14Bluegray900,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 11,
                          right: 57,
                        ),
                        child: Row(
                          children: [
                            Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: getMargin(
                                top: 4,
                                bottom: 3,
                              ),
                              color: ColorConstant.green600,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Container(
                                height: getVerticalSize(
                                  24,
                                ),
                                width: getHorizontalSize(
                                  44,
                                ),
                                padding: getPadding(
                                  all: 1,
                                ),
                                decoration: AppDecoration.fillGreen600.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Stack(
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgEllipse32,
                                      height: getSize(
                                        21,
                                      ),
                                      width: getSize(
                                        21,
                                      ),
                                      alignment: Alignment.centerRight,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: getHorizontalSize(
                                  172,
                                ),
                                margin: getMargin(
                                  left: 12,
                                ),
                                child: Text(
                                  "msg_enable_or_disab".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular13Bluegray400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 20,
                        ),
                        child: Text(
                          "lbl_change_password".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium14Bluegray900,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 12,
                        ),
                        child: Text(
                          "msg_current_passwor".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular13Bluegray400,
                        ),
                      ),
                      BlocSelector<SettingSecurityBloc, SettingSecurityState,
                          TextEditingController?>(
                        selector: (state) =>
                            state.currentpasswordvalueController,
                        builder: (context, currentpasswordvalueController) {
                          return CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: currentpasswordvalueController,
                            hintText: "lbl_charlene_123".tr,
                            margin: getMargin(
                              top: 8,
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                        ),
                        child: Text(
                          "lbl_new_password".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular13Bluegray400,
                        ),
                      ),
                      BlocSelector<SettingSecurityBloc, SettingSecurityState,
                          TextEditingController?>(
                        selector: (state) =>
                            state.currentpasswordvalueOneController,
                        builder: (context, currentpasswordvalueOneController) {
                          return CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: currentpasswordvalueOneController,
                            hintText: "lbl_charlene_123".tr,
                            margin: getMargin(
                              top: 8,
                            ),
                            textInputAction: TextInputAction.done,
                          );
                        },
                      ),
                      CustomButton(
                        height: getVerticalSize(
                          40,
                        ),
                        text: "lbl_save".tr,
                        margin: getMargin(
                          top: 20,
                        ),
                        shape: ButtonShape.RoundedBorder7,
                        padding: ButtonPadding.PaddingAll11,
                        fontStyle: ButtonFontStyle.InterMedium15WhiteA700,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
