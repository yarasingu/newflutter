import '../transactions_tab_container_screen/widgets/listbalance1_item_widget.dart';
import 'bloc/transactions_tab_container_bloc.dart';
import 'models/listbalance1_item_model.dart';
import 'models/transactions_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:yarisingu_s_application2/core/app_export.dart';
import 'package:yarisingu_s_application2/presentation/transactions_page/transactions_page.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/appbar_circleimage.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/appbar_searchview.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:yarisingu_s_application2/widgets/custom_button.dart';

class TransactionsTabContainerScreen extends StatefulWidget {
  @override
  _TransactionsTabContainerScreenState createState() =>
      _TransactionsTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<TransactionsTabContainerBloc>(
      create: (context) =>
          TransactionsTabContainerBloc(TransactionsTabContainerState(
        transactionsTabContainerModelObj: TransactionsTabContainerModel(),
      ))
            ..add(TransactionsTabContainerInitialEvent()),
      child: TransactionsTabContainerScreen(),
    );
  }
}

class _TransactionsTabContainerScreenState
    extends State<TransactionsTabContainerScreen>
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
                    text: "lbl_transactions".tr,
                    margin: getMargin(
                      left: 76,
                      top: 3,
                      bottom: 6,
                    ),
                  ),
                  AppbarCircleimage(
                    imagePath: ImageConstant.imgEllipse3735x35,
                    margin: getMargin(
                      left: 66,
                    ),
                  ),
                ],
              ),
              BlocSelector<TransactionsTabContainerBloc,
                  TransactionsTabContainerState, TextEditingController?>(
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
                top: 24,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 24,
                      right: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_my_cards".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold16,
                        ),
                        Padding(
                          padding: getPadding(
                            bottom: 2,
                          ),
                          child: Text(
                            "lbl_add_card2".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterSemiBold14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        184,
                      ),
                      child: BlocSelector<
                          TransactionsTabContainerBloc,
                          TransactionsTabContainerState,
                          TransactionsTabContainerModel?>(
                        selector: (state) =>
                            state.transactionsTabContainerModelObj,
                        builder: (context, transactionsTabContainerModelObj) {
                          return ListView.separated(
                            padding: getPadding(
                              left: 24,
                              top: 14,
                            ),
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: getVerticalSize(
                                  20,
                                ),
                              );
                            },
                            itemCount: transactionsTabContainerModelObj
                                    ?.listbalance1ItemList.length ??
                                0,
                            itemBuilder: (context, index) {
                              Listbalance1ItemModel model =
                                  transactionsTabContainerModelObj
                                          ?.listbalance1ItemList[index] ??
                                      Listbalance1ItemModel();
                              return Listbalance1ItemWidget(
                                model,
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 24,
                      ),
                      child: Text(
                        "lbl_my_expense".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterSemiBold16,
                      ),
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 24,
                      top: 14,
                      right: 24,
                    ),
                    padding: getPadding(
                      left: 21,
                      top: 19,
                      right: 21,
                      bottom: 19,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 61,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: getVerticalSize(
                                  93,
                                ),
                                width: getHorizontalSize(
                                  35,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray10001,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      10,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 10,
                                ),
                                child: Text(
                                  "lbl_aug".tr,
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
                            left: 15,
                            top: 12,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: getVerticalSize(
                                  142,
                                ),
                                width: getHorizontalSize(
                                  35,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray10001,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      10,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 10,
                                ),
                                child: Text(
                                  "lbl_sep".tr,
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
                            left: 15,
                            top: 58,
                            bottom: 1,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: getVerticalSize(
                                  96,
                                ),
                                width: getHorizontalSize(
                                  35,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray10001,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      10,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 9,
                                ),
                                child: Text(
                                  "lbl_oct".tr,
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
                            left: 15,
                            top: 105,
                            bottom: 1,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: getVerticalSize(
                                  49,
                                ),
                                width: getHorizontalSize(
                                  35,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray10001,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      10,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 9,
                                ),
                                child: Text(
                                  "lbl_nov".tr,
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
                            left: 7,
                            top: 1,
                            bottom: 1,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_12_500".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium13Bluegray800,
                              ),
                              Container(
                                height: getVerticalSize(
                                  129,
                                ),
                                width: getHorizontalSize(
                                  35,
                                ),
                                margin: getMargin(
                                  top: 7,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.indigo600,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      10,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 9,
                                ),
                                child: Text(
                                  "lbl_dec".tr,
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
                            left: 7,
                            top: 66,
                            bottom: 1,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: getVerticalSize(
                                  88,
                                ),
                                width: getHorizontalSize(
                                  35,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray10001,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      10,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 9,
                                ),
                                child: Text(
                                  "lbl_jan".tr,
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
                  Container(
                    height: getVerticalSize(
                      24,
                    ),
                    width: getHorizontalSize(
                      325,
                    ),
                    margin: getMargin(
                      top: 24,
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
                            "msg_all_transaction".tr,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Tab(
                          child: Text(
                            "lbl_income".tr,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Tab(
                          child: Text(
                            "lbl_expense".tr,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      417,
                    ),
                    child: TabBarView(
                      controller: group744Controller,
                      children: [
                        TransactionsPage.builder(context),
                        TransactionsPage.builder(context),
                        TransactionsPage.builder(context),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      bottom: 55,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getSize(
                            16,
                          ),
                          width: getSize(
                            16,
                          ),
                          margin: getMargin(
                            top: 7,
                            bottom: 7,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 6,
                            top: 7,
                            bottom: 7,
                          ),
                          child: Text(
                            "lbl_previous".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium12,
                          ),
                        ),
                        CustomButton(
                          height: getVerticalSize(
                            30,
                          ),
                          width: getSize(
                            30,
                          ),
                          text: "lbl_1".tr,
                          margin: getMargin(
                            left: 10,
                          ),
                          shape: ButtonShape.RoundedBorder7,
                          fontStyle: ButtonFontStyle.InterMedium12WhiteA700,
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                            top: 8,
                            bottom: 6,
                          ),
                          child: Text(
                            "lbl_22".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium12,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 22,
                            top: 8,
                            bottom: 6,
                          ),
                          child: Text(
                            "lbl_32".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium12,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 22,
                            top: 8,
                            bottom: 6,
                          ),
                          child: Text(
                            "lbl_42".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium12,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 22,
                            top: 8,
                            bottom: 6,
                          ),
                          child: Text(
                            "lbl_next".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium12,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowrightIndigo600,
                          height: getSize(
                            16,
                          ),
                          width: getSize(
                            16,
                          ),
                          margin: getMargin(
                            left: 6,
                            top: 7,
                            bottom: 7,
                          ),
                        ),
                      ],
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
