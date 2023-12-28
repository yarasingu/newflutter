import '../investments_screen/widgets/listcontrast_item_widget.dart';
import '../investments_screen/widgets/listslno_item_widget.dart';
import '../investments_screen/widgets/listuser_item_widget.dart';
import 'bloc/investments_bloc.dart';
import 'models/investments_model.dart';
import 'models/listcontrast_item_model.dart';
import 'models/listslno_item_model.dart';
import 'models/listuser_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yarisingu_s_application2/core/app_export.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/appbar_circleimage.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/appbar_searchview.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/custom_app_bar.dart';

class InvestmentsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<InvestmentsBloc>(
      create: (context) => InvestmentsBloc(InvestmentsState(
        investmentsModelObj: InvestmentsModel(),
      ))
        ..add(InvestmentsInitialEvent()),
      child: InvestmentsScreen(),
    );
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
                    text: "lbl_investments".tr,
                    margin: getMargin(
                      left: 79,
                      top: 4,
                      bottom: 5,
                    ),
                  ),
                  AppbarCircleimage(
                    imagePath: ImageConstant.imgEllipse3735x35,
                    margin: getMargin(
                      left: 69,
                    ),
                  ),
                ],
              ),
              BlocSelector<InvestmentsBloc, InvestmentsState,
                  TextEditingController?>(
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
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 24,
                top: 24,
                right: 24,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BlocSelector<InvestmentsBloc, InvestmentsState,
                      InvestmentsModel?>(
                    selector: (state) => state.investmentsModelObj,
                    builder: (context, investmentsModelObj) {
                      return ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(
                              15,
                            ),
                          );
                        },
                        itemCount:
                            investmentsModelObj?.listcontrastItemList.length ??
                                0,
                        itemBuilder: (context, index) {
                          ListcontrastItemModel model = investmentsModelObj
                                  ?.listcontrastItemList[index] ??
                              ListcontrastItemModel();
                          return ListcontrastItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Text(
                      "msg_yearly_total_in".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterSemiBold16,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 14,
                    ),
                    padding: getPadding(
                      left: 19,
                      top: 16,
                      right: 19,
                      bottom: 16,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 20,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_40_000".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular12,
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 24,
                                ),
                                child: Text(
                                  "lbl_30_000".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular12,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 24,
                                ),
                                child: Text(
                                  "lbl_20_000".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular12,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 24,
                                ),
                                child: Text(
                                  "lbl_10_000".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular12,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 23,
                                ),
                                child: Text(
                                  "lbl_0".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 12,
                            right: 2,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgGroup1045,
                                height: getVerticalSize(
                                  157,
                                ),
                                width: getHorizontalSize(
                                  232,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 1,
                                  top: 7,
                                  right: 3,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "lbl_2016".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular12,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 12,
                                      ),
                                      child: Text(
                                        "lbl_2017".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular12,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 12,
                                      ),
                                      child: Text(
                                        "lbl_2018".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular12,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 12,
                                      ),
                                      child: Text(
                                        "lbl_2019".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular12,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 11,
                                      ),
                                      child: Text(
                                        "lbl_2020".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular12,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 10,
                                      ),
                                      child: Text(
                                        "lbl_2021".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Text(
                      "lbl_monthly_revenue".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterSemiBold16,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 14,
                    ),
                    padding: getPadding(
                      left: 19,
                      top: 16,
                      right: 19,
                      bottom: 16,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 20,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_40_000".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular12,
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 24,
                                ),
                                child: Text(
                                  "lbl_30_000".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular12,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 24,
                                ),
                                child: Text(
                                  "lbl_20_000".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular12,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 24,
                                ),
                                child: Text(
                                  "lbl_10_000".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular12,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 23,
                                ),
                                child: Text(
                                  "lbl_0".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 12,
                            right: 2,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgGroup1049,
                                height: getVerticalSize(
                                  157,
                                ),
                                width: getHorizontalSize(
                                  232,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 1,
                                  top: 7,
                                  right: 3,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "lbl_2016".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular12,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 12,
                                      ),
                                      child: Text(
                                        "lbl_2017".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular12,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 12,
                                      ),
                                      child: Text(
                                        "lbl_2018".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular12,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 12,
                                      ),
                                      child: Text(
                                        "lbl_2019".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular12,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 11,
                                      ),
                                      child: Text(
                                        "lbl_2020".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular12,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 10,
                                      ),
                                      child: Text(
                                        "lbl_2021".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Text(
                      "lbl_my_investment".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterSemiBold16,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 14,
                    ),
                    child: BlocSelector<InvestmentsBloc, InvestmentsState,
                        InvestmentsModel?>(
                      selector: (state) => state.investmentsModelObj,
                      builder: (context, investmentsModelObj) {
                        return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                10,
                              ),
                            );
                          },
                          itemCount:
                              investmentsModelObj?.listuserItemList.length ?? 0,
                          itemBuilder: (context, index) {
                            ListuserItemModel model =
                                investmentsModelObj?.listuserItemList[index] ??
                                    ListuserItemModel();
                            return ListuserItemWidget(
                              model,
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Text(
                      "lbl_trending_stock".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterSemiBold16,
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    child: Container(
                      margin: getMargin(
                        top: 14,
                      ),
                      padding: getPadding(
                        left: 20,
                        top: 16,
                        right: 20,
                        bottom: 16,
                      ),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder15,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              right: 20,
                            ),
                            child: BlocSelector<InvestmentsBloc,
                                InvestmentsState, InvestmentsModel?>(
                              selector: (state) => state.investmentsModelObj,
                              builder: (context, investmentsModelObj) {
                                return ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return Padding(
                                      padding: getPadding(
                                        top: 8.0,
                                        bottom: 8.0,
                                      ),
                                      child: SizedBox(
                                        width: getHorizontalSize(
                                          285,
                                        ),
                                        child: Divider(
                                          height: getVerticalSize(
                                            1,
                                          ),
                                          thickness: getVerticalSize(
                                            1,
                                          ),
                                          color: ColorConstant.gray10004,
                                        ),
                                      ),
                                    );
                                  },
                                  itemCount: investmentsModelObj
                                          ?.listslnoItemList.length ??
                                      0,
                                  itemBuilder: (context, index) {
                                    ListslnoItemModel model =
                                        investmentsModelObj
                                                ?.listslnoItemList[index] ??
                                            ListslnoItemModel();
                                    return ListslnoItemWidget(
                                      model,
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
