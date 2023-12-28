import '../loans_screen/widgets/listprice_item_widget.dart';
import '../loans_screen/widgets/listuser1_item_widget.dart';
import 'bloc/loans_bloc.dart';
import 'models/listprice_item_model.dart';
import 'models/listuser1_item_model.dart';
import 'models/loans_model.dart';
import 'package:flutter/material.dart';
import 'package:yarisingu_s_application2/core/app_export.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/appbar_circleimage.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/appbar_searchview.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/custom_app_bar.dart';

class LoansScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<LoansBloc>(
      create: (context) => LoansBloc(LoansState(
        loansModelObj: LoansModel(),
      ))
        ..add(LoansInitialEvent()),
      child: LoansScreen(),
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
                    text: "lbl_loans".tr,
                    margin: getMargin(
                      left: 110,
                      top: 4,
                      bottom: 5,
                    ),
                  ),
                  AppbarCircleimage(
                    imagePath: ImageConstant.imgEllipse3735x35,
                    margin: getMargin(
                      left: 99,
                    ),
                  ),
                ],
              ),
              BlocSelector<LoansBloc, LoansState, TextEditingController?>(
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
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        85,
                      ),
                      child: BlocSelector<LoansBloc, LoansState, LoansModel?>(
                        selector: (state) => state.loansModelObj,
                        builder: (context, loansModelObj) {
                          return ListView.separated(
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: getVerticalSize(
                                  24,
                                ),
                              );
                            },
                            itemCount:
                                loansModelObj?.listuser1ItemList.length ?? 0,
                            itemBuilder: (context, index) {
                              Listuser1ItemModel model =
                                  loansModelObj?.listuser1ItemList[index] ??
                                      Listuser1ItemModel();
                              return Listuser1ItemWidget(
                                model,
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 22,
                    ),
                    child: Text(
                      "msg_active_loans_ov".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterSemiBold16Bluegray80001,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 16,
                      right: 24,
                    ),
                    padding: getPadding(
                      left: 21,
                      top: 17,
                      right: 21,
                      bottom: 17,
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
                            right: 34,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "lbl_loan_money".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium12Bluegray400,
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 35,
                                ),
                                child: Text(
                                  "lbl_left_to_repay".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium12Bluegray400,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 36,
                                ),
                                child: Text(
                                  "lbl_repay".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium12Bluegray400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 5,
                          ),
                          child: Divider(
                            height: getVerticalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: ColorConstant.gray10005,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 10,
                          ),
                          child:
                              BlocSelector<LoansBloc, LoansState, LoansModel?>(
                            selector: (state) => state.loansModelObj,
                            builder: (context, loansModelObj) {
                              return ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return Padding(
                                    padding: getPadding(
                                      top: 10.5,
                                      bottom: 10.5,
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
                                        color: ColorConstant.gray10005,
                                      ),
                                    ),
                                  );
                                },
                                itemCount:
                                    loansModelObj?.listpriceItemList.length ??
                                        0,
                                itemBuilder: (context, index) {
                                  ListpriceItemModel model =
                                      loansModelObj?.listpriceItemList[index] ??
                                          ListpriceItemModel();
                                  return ListpriceItemWidget(
                                    model,
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 10,
                          ),
                          child: Divider(
                            height: getVerticalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: ColorConstant.gray10005,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 5,
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_total".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterMedium12Red700,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 5,
                                    ),
                                    child: Text(
                                      "lbl_125_0000".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium12Red700,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 43,
                                  top: 20,
                                ),
                                child: Text(
                                  "lbl_750_000".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium12Red700,
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
          ),
        ),
      ),
    );
  }
}
