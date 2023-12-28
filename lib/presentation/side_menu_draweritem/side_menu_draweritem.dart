import 'bloc/side_menu_bloc.dart';
import 'package:flutter/material.dart';
import 'package:yarisingu_s_application2/core/app_export.dart';

class SideMenuDraweritem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            width: getHorizontalSize(250),
            padding: getPadding(left: 40, top: 30, right: 40, bottom: 30),
            decoration: AppDecoration.outlineGray300,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: getPadding(left: 4, right: 4),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgLogoIndigo600,
                            height: getSize(40),
                            width: getSize(40)),
                        Padding(
                            padding: getPadding(left: 4, top: 4, bottom: 4),
                            child: Text("lbl_firstbank".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold25))
                      ])),
                  GestureDetector(
                      onTap: () {
                        onTapRowhome(context);
                      },
                      child: Padding(
                          padding: getPadding(top: 67, right: 31),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgHome,
                                height: getSize(25),
                                width: getSize(25)),
                            Padding(
                                padding: getPadding(left: 20, top: 2),
                                child: Text("lbl_dashboard".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterMedium18))
                          ]))),
                  GestureDetector(
                      onTap: () {
                        onTapRowtransferone(context);
                      },
                      child: Padding(
                          padding: getPadding(top: 35, right: 13),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgTransfer1,
                                    height: getSize(25),
                                    width: getSize(25)),
                                Padding(
                                    padding: getPadding(top: 2),
                                    child: Text("lbl_transactions".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium18))
                              ]))),
                  GestureDetector(
                      onTap: () {
                        onTapRowuser(context);
                      },
                      child: Padding(
                          padding: getPadding(top: 35, right: 43),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgUserBlueGray400,
                                height: getSize(25),
                                width: getSize(25)),
                            Padding(
                                padding:
                                    getPadding(left: 20, top: 1, bottom: 1),
                                child: Text("lbl_accounts".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterMedium18))
                          ]))),
                  GestureDetector(
                      onTap: () {
                        onTapRowmap(context);
                      },
                      child: Padding(
                          padding: getPadding(top: 35, right: 19),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgMap,
                                    height: getSize(25),
                                    width: getSize(25)),
                                Padding(
                                    padding: getPadding(top: 2),
                                    child: Text("lbl_investments".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium18))
                              ]))),
                  GestureDetector(
                      onTap: () {
                        onTapRowfile(context);
                      },
                      child: Padding(
                          padding: getPadding(top: 35, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgFileBlueGray400,
                                    height: getSize(25),
                                    width: getSize(25)),
                                Padding(
                                    padding: getPadding(top: 2),
                                    child: Text("lbl_credit_cards".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium18))
                              ]))),
                  GestureDetector(
                      onTap: () {
                        onTapRowquestion(context);
                      },
                      child: Padding(
                          padding: getPadding(top: 35),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgQuestionBlueGray400,
                                height: getSize(25),
                                width: getSize(25)),
                            Padding(
                                padding:
                                    getPadding(left: 20, top: 1, bottom: 1),
                                child: Text("lbl_loans".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterMedium18))
                          ]))),
                  GestureDetector(
                      onTap: () {
                        onTapRowserviceone(context);
                      },
                      child: Padding(
                          padding: getPadding(top: 35, right: 50),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgService1,
                                height: getSize(25),
                                width: getSize(25)),
                            Padding(
                                padding: getPadding(left: 20, top: 2),
                                child: Text("lbl_services".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterMedium18))
                          ]))),
                  Padding(
                      padding: getPadding(top: 35, right: 9),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgLightbulb,
                                height: getSize(25),
                                width: getSize(25),
                                margin: getMargin(bottom: 1)),
                            Padding(
                                padding: getPadding(top: 4),
                                child: Text("lbl_my_privileges".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterMedium18))
                          ])),
                  Padding(
                      padding: getPadding(top: 33, bottom: 108),
                      child: Row(children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgSettings,
                            height: getSize(25),
                            width: getSize(25),
                            margin: getMargin(bottom: 1)),
                        Padding(
                            padding: getPadding(left: 20, top: 4),
                            child: Text("lbl_setting".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium18))
                      ]))
                ])));
  }

  onTapRowhome(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }

  onTapRowtransferone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.transactionsTabContainerScreen,
    );
  }

  onTapRowuser(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.accountsScreen,
    );
  }

  onTapRowmap(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.investmentsScreen,
    );
  }

  onTapRowfile(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.creditCardsScreen,
    );
  }

  onTapRowquestion(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loansScreen,
    );
  }

  onTapRowserviceone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.servicesScreen,
    );
  }
}
