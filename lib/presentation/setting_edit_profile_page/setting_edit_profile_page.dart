import 'bloc/setting_edit_profile_bloc.dart';
import 'models/setting_edit_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:yarisingu_s_application2/core/app_export.dart';
import 'package:yarisingu_s_application2/widgets/custom_button.dart';
import 'package:yarisingu_s_application2/widgets/custom_drop_down.dart';
import 'package:yarisingu_s_application2/widgets/custom_icon_button.dart';
import 'package:yarisingu_s_application2/widgets/custom_text_form_field.dart';

class SettingEditProfilePage extends StatefulWidget {
  @override
  _SettingEditProfilePageState createState() => _SettingEditProfilePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SettingEditProfileBloc>(
        create: (context) => SettingEditProfileBloc(SettingEditProfileState(
            settingEditProfileModelObj: SettingEditProfileModel()))
          ..add(SettingEditProfileInitialEvent()),
        child: SettingEditProfilePage());
  }

  requestCameraGalleryPermission(BuildContext context) async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}

class _SettingEditProfilePageState extends State<SettingEditProfilePage>
    with AutomaticKeepAliveClientMixin<SettingEditProfilePage> {
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
                          padding: getPadding(left: 20, top: 25, right: 20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: getVerticalSize(170),
                                        width: getHorizontalSize(174),
                                        child: Stack(
                                            alignment: Alignment.bottomRight,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse28170x170,
                                                  height: getSize(170),
                                                  width: getSize(170),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(85)),
                                                  alignment: Alignment.center,
                                                  onTap: () {
                                                    requestCameraGalleryPermission(
                                                        context);
                                                  }),
                                              CustomIconButton(
                                                  height: 38,
                                                  width: 38,
                                                  margin: getMargin(bottom: 20),
                                                  variant: IconButtonVariant
                                                      .FillIndigo600,
                                                  shape: IconButtonShape
                                                      .RoundedBorder17,
                                                  padding: IconButtonPadding
                                                      .PaddingAll9,
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgTicket18x18))
                                            ]))),
                                Padding(
                                    padding: getPadding(top: 22),
                                    child: Text("lbl_your_name".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular13Bluegray400)),
                                BlocSelector<
                                        SettingEditProfileBloc,
                                        SettingEditProfileState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.languageController,
                                    builder: (context, languageController) {
                                      return CustomTextFormField(
                                          focusNode: FocusNode(),
                                          controller: languageController,
                                          hintText: "lbl_charlene_reed".tr,
                                          margin: getMargin(top: 8));
                                    }),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Text("lbl_user_name".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular13Bluegray400)),
                                BlocSelector<
                                        SettingEditProfileBloc,
                                        SettingEditProfileState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.languageOneController,
                                    builder: (context, languageOneController) {
                                      return CustomTextFormField(
                                          focusNode: FocusNode(),
                                          controller: languageOneController,
                                          hintText: "lbl_charlene_reed".tr,
                                          margin: getMargin(top: 8));
                                    }),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Text("lbl_email".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular13Bluegray400)),
                                BlocSelector<
                                        SettingEditProfileBloc,
                                        SettingEditProfileState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.emailOneController,
                                    builder: (context, emailOneController) {
                                      return CustomTextFormField(
                                          focusNode: FocusNode(),
                                          controller: emailOneController,
                                          hintText: "lbl_user_gmail_com".tr,
                                          margin: getMargin(top: 8));
                                    }),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Text("lbl_password".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular13Bluegray400)),
                                BlocSelector<
                                        SettingEditProfileBloc,
                                        SettingEditProfileState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.passwordOneController,
                                    builder: (context, passwordOneController) {
                                      return CustomTextFormField(
                                          focusNode: FocusNode(),
                                          controller: passwordOneController,
                                          hintText: "lbl".tr,
                                          margin: getMargin(top: 8),
                                          textInputType:
                                              TextInputType.visiblePassword,
                                          isObscureText: true);
                                    }),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Text("lbl_date_of_birth".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular13Bluegray400)),
                                BlocSelector<
                                        SettingEditProfileBloc,
                                        SettingEditProfileState,
                                        SettingEditProfileModel?>(
                                    selector: (state) =>
                                        state.settingEditProfileModelObj,
                                    builder:
                                        (context, settingEditProfileModelObj) {
                                      return CustomDropDown(
                                          focusNode: FocusNode(),
                                          icon: Container(
                                              margin: getMargin(
                                                  left: 30, right: 20),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: ColorConstant
                                                          .blueGray400,
                                                      width:
                                                          getHorizontalSize(1),
                                                      strokeAlign:
                                                          strokeAlignCenter)),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowdown)),
                                          hintText: "lbl_25_january_1990".tr,
                                          margin: getMargin(top: 8),
                                          items: settingEditProfileModelObj
                                                  ?.dropdownItemList ??
                                              [],
                                          onChanged: (value) {
                                            context
                                                .read<SettingEditProfileBloc>()
                                                .add(ChangeDropDownEvent(
                                                    value: value));
                                          });
                                    }),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Text("lbl_present_address".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular13Bluegray400)),
                                BlocSelector<
                                        SettingEditProfileBloc,
                                        SettingEditProfileState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.group572Controller,
                                    builder: (context, group572Controller) {
                                      return CustomTextFormField(
                                          focusNode: FocusNode(),
                                          controller: group572Controller,
                                          hintText: "msg_san_jose_calif".tr,
                                          margin: getMargin(top: 8));
                                    }),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Text("msg_permanent_addre".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular13Bluegray400)),
                                BlocSelector<
                                        SettingEditProfileBloc,
                                        SettingEditProfileState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.group572OneController,
                                    builder: (context, group572OneController) {
                                      return CustomTextFormField(
                                          focusNode: FocusNode(),
                                          controller: group572OneController,
                                          hintText: "msg_san_jose_calif".tr,
                                          margin: getMargin(top: 8));
                                    }),
                                Padding(
                                    padding: getPadding(top: 17),
                                    child: Text("lbl_city".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular13Bluegray400)),
                                BlocSelector<
                                        SettingEditProfileBloc,
                                        SettingEditProfileState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.group572TwoController,
                                    builder: (context, group572TwoController) {
                                      return CustomTextFormField(
                                          focusNode: FocusNode(),
                                          controller: group572TwoController,
                                          hintText: "lbl_san_jose".tr,
                                          margin: getMargin(top: 7));
                                    }),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Text("lbl_postal_code".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular13Bluegray400)),
                                BlocSelector<
                                        SettingEditProfileBloc,
                                        SettingEditProfileState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.zipcodeController,
                                    builder: (context, zipcodeController) {
                                      return CustomTextFormField(
                                          focusNode: FocusNode(),
                                          controller: zipcodeController,
                                          hintText: "lbl_45962".tr,
                                          margin: getMargin(top: 8));
                                    }),
                                Padding(
                                    padding: getPadding(top: 17),
                                    child: Text("lbl_country".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular13Bluegray400)),
                                BlocSelector<
                                        SettingEditProfileBloc,
                                        SettingEditProfileState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.group572ThreeController,
                                    builder:
                                        (context, group572ThreeController) {
                                      return CustomTextFormField(
                                          focusNode: FocusNode(),
                                          controller: group572ThreeController,
                                          hintText: "lbl_usa".tr,
                                          margin: getMargin(top: 7),
                                          textInputAction:
                                              TextInputAction.done);
                                    }),
                                CustomButton(
                                    height: getVerticalSize(40),
                                    text: "lbl_save".tr,
                                    margin: getMargin(top: 20),
                                    shape: ButtonShape.RoundedBorder7,
                                    padding: ButtonPadding.PaddingAll11,
                                    fontStyle:
                                        ButtonFontStyle.InterMedium15WhiteA700)
                              ]))
                    ])))));
  }

  requestCameraGalleryPermission(BuildContext context) async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
