import 'bloc/setting_preference_bloc.dart';
import 'models/setting_preference_model.dart';
import 'package:flutter/material.dart';
import 'package:yarisingu_s_application2/core/app_export.dart';
import 'package:yarisingu_s_application2/widgets/custom_button.dart';
import 'package:yarisingu_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SettingPreferencePage extends StatefulWidget {
  @override
  _SettingPreferencePageState createState() => _SettingPreferencePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SettingPreferenceBloc>(
      create: (context) => SettingPreferenceBloc(SettingPreferenceState(
        settingPreferenceModelObj: SettingPreferenceModel(),
      ))
        ..add(SettingPreferenceInitialEvent()),
      child: SettingPreferencePage(),
    );
  }
}

class _SettingPreferencePageState extends State<SettingPreferencePage>
    with AutomaticKeepAliveClientMixin<SettingPreferencePage> {
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
                    top: 23,
                    right: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_currency".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular13Bluegray400,
                      ),
                      BlocSelector<SettingPreferenceBloc,
                          SettingPreferenceState, TextEditingController?>(
                        selector: (state) => state.currencyOneController,
                        builder: (context, currencyOneController) {
                          return CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: currencyOneController,
                            hintText: "lbl_usd".tr,
                            margin: getMargin(
                              top: 7,
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: getPadding(
                          top: 16,
                        ),
                        child: Text(
                          "lbl_time_zone".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular13Bluegray400,
                        ),
                      ),
                      BlocSelector<SettingPreferenceBloc,
                          SettingPreferenceState, TextEditingController?>(
                        selector: (state) => state.timezoneOneController,
                        builder: (context, timezoneOneController) {
                          return CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: timezoneOneController,
                            hintText: "msg_gmt_12_00_int".tr,
                            margin: getMargin(
                              top: 8,
                            ),
                            textInputAction: TextInputAction.done,
                          );
                        },
                      ),
                      Padding(
                        padding: getPadding(
                          top: 22,
                        ),
                        child: Text(
                          "lbl_notification".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium14Bluegray900,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 12,
                          right: 33,
                        ),
                        child: Row(
                          children: [
                            Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
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
                            Padding(
                              padding: getPadding(
                                left: 12,
                                top: 5,
                                bottom: 2,
                              ),
                              child: Text(
                                "msg_i_send_or_recei".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular13Bluegray400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 18,
                          right: 81,
                        ),
                        child: Row(
                          children: [
                            Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              color: ColorConstant.gray10005,
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
                                decoration:
                                    AppDecoration.fillGray10005.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Stack(
                                  children: [
                                    CustomImageView(
                                      svgPath:
                                          ImageConstant.imgEllipse32WhiteA700,
                                      height: getSize(
                                        21,
                                      ),
                                      width: getSize(
                                        21,
                                      ),
                                      alignment: Alignment.centerLeft,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 12,
                                top: 4,
                                bottom: 3,
                              ),
                              child: Text(
                                "msg_i_receive_merch".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular13Bluegray400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 17,
                          right: 22,
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
                                  209,
                                ),
                                margin: getMargin(
                                  left: 12,
                                ),
                                child: Text(
                                  "msg_there_are_recom".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular13Bluegray400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomButton(
                        height: getVerticalSize(
                          40,
                        ),
                        text: "lbl_save".tr,
                        margin: getMargin(
                          top: 17,
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
