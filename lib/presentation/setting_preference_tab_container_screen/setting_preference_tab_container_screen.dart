import 'bloc/setting_preference_tab_container_bloc.dart';
import 'models/setting_preference_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:yarisingu_s_application2/core/app_export.dart';
import 'package:yarisingu_s_application2/presentation/setting_edit_profile_page/setting_edit_profile_page.dart';
import 'package:yarisingu_s_application2/presentation/setting_preference_page/setting_preference_page.dart';
import 'package:yarisingu_s_application2/presentation/setting_security_page/setting_security_page.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/appbar_circleimage.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/appbar_searchview.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/custom_app_bar.dart';

class SettingPreferenceTabContainerScreen extends StatefulWidget {
  @override
  _SettingPreferenceTabContainerScreenState createState() =>
      _SettingPreferenceTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SettingPreferenceTabContainerBloc>(
      create: (context) =>
          SettingPreferenceTabContainerBloc(SettingPreferenceTabContainerState(
        settingPreferenceTabContainerModelObj:
            SettingPreferenceTabContainerModel(),
      ))
            ..add(SettingPreferenceTabContainerInitialEvent()),
      child: SettingPreferenceTabContainerScreen(),
    );
  }
}

class _SettingPreferenceTabContainerScreenState
    extends State<SettingPreferenceTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController group744Controller;

  @override
  void initState() {
    super.initState();
    group744Controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray10003,
        appBar: CustomAppBar(
          height: getVerticalSize(
            122,
          ),
          centerTitle: true,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  AppbarImage(
                    height: getSize(
                      24,
                    ),
                    width: getSize(
                      24,
                    ),
                    svgPath: ImageConstant.imgMenu,
                    margin: getMargin(
                      top: 5,
                      bottom: 6,
                    ),
                  ),
                  AppbarTitle(
                    text: "lbl_setting".tr,
                    margin: getMargin(
                      left: 104,
                      top: 6,
                      bottom: 3,
                    ),
                  ),
                  AppbarCircleimage(
                    imagePath: ImageConstant.imgEllipse3735x35,
                    margin: getMargin(
                      left: 94,
                    ),
                  ),
                ],
              ),
              BlocSelector<SettingPreferenceTabContainerBloc,
                  SettingPreferenceTabContainerState, TextEditingController?>(
                selector: (state) => state.group420Controller,
                builder: (context, group420Controller) {
                  return AppbarSearchview(
                    margin: getMargin(
                      top: 20,
                    ),
                    hintText: "msg_search_for_some".tr,
                    controller: group420Controller,
                  );
                },
              ),
            ],
          ),
          styleType: Style.bgFillWhiteA700,
        ),
        body: Container(
          width: getHorizontalSize(
            327,
          ),
          margin: getMargin(
            left: 24,
            top: 46,
            right: 24,
            bottom: 5,
          ),
          decoration: AppDecoration.fillWhiteA700.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  24,
                ),
                width: getHorizontalSize(
                  285,
                ),
                child: TabBar(
                  controller: group744Controller,
                  labelColor: ColorConstant.indigo600,
                  labelStyle: TextStyle(
                    fontSize: getFontSize(
                      13,
                    ),
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                  unselectedLabelColor: ColorConstant.blueGray400,
                  unselectedLabelStyle: TextStyle(
                    fontSize: getFontSize(
                      13,
                    ),
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                  indicatorColor: ColorConstant.indigo600,
                  tabs: [
                    Tab(
                      child: Text(
                        "lbl_edit_profile".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_preference".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_security".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  418,
                ),
                child: TabBarView(
                  controller: group744Controller,
                  children: [
                    SettingEditProfilePage.builder(context),
                    SettingPreferencePage.builder(context),
                    SettingSecurityPage.builder(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
