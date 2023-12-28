import '../credit_cards_screen/widgets/listbalance2_item_widget.dart';
import '../credit_cards_screen/widgets/listellipsethirtythree_item_widget.dart';
import '../credit_cards_screen/widgets/listfile_item_widget.dart';
import '../credit_cards_screen/widgets/listlock_item_widget.dart';
import 'bloc/credit_cards_bloc.dart';
import 'models/credit_cards_model.dart';
import 'models/listbalance2_item_model.dart';
import 'models/listellipsethirtythree_item_model.dart';
import 'models/listfile_item_model.dart';
import 'models/listlock_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yarisingu_s_application2/core/app_export.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/appbar_circleimage.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/appbar_searchview.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:yarisingu_s_application2/widgets/custom_button.dart';
import 'package:yarisingu_s_application2/widgets/custom_text_form_field.dart';

class CreditCardsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<CreditCardsBloc>(
      create: (context) => CreditCardsBloc(CreditCardsState(
        creditCardsModelObj: CreditCardsModel(),
      ))
        ..add(CreditCardsInitialEvent()),
      child: CreditCardsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray10003,
        resizeToAvoidBottomInset: false,
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
                    text: "lbl_credit_cards".tr,
                    margin: getMargin(
                      left: 78,
                      top: 3,
                      bottom: 6,
                    ),
                  ),
                  AppbarCircleimage(
                    imagePath: ImageConstant.imgEllipse3735x35,
                    margin: getMargin(
                      left: 68,
                    ),
                  ),
                ],
              ),
              BlocSelector<CreditCardsBloc, CreditCardsState,
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
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_my_cards".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterSemiBold16,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        184,
                      ),
                      child: BlocSelector<CreditCardsBloc, CreditCardsState,
                          CreditCardsModel?>(
                        selector: (state) => state.creditCardsModelObj,
                        builder: (context, creditCardsModelObj) {
                          return ListView.separated(
                            padding: getPadding(
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
                            itemCount: creditCardsModelObj
                                    ?.listbalance2ItemList.length ??
                                0,
                            itemBuilder: (context, index) {
                              Listbalance2ItemModel model = creditCardsModelObj
                                      ?.listbalance2ItemList[index] ??
                                  Listbalance2ItemModel();
                              return Listbalance2ItemWidget(
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
                      top: 24,
                    ),
                    child: Text(
                      "msg_card_expense_st".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterSemiBold16,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 10,
                      right: 24,
                    ),
                    padding: getPadding(
                      left: 63,
                      top: 18,
                      right: 63,
                      bottom: 18,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgGroup346chart,
                          height: getVerticalSize(
                            191,
                          ),
                          width: getHorizontalSize(
                            200,
                          ),
                          margin: getMargin(
                            top: 1,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 11,
                            top: 27,
                            right: 11,
                          ),
                          child: BlocSelector<CreditCardsBloc, CreditCardsState,
                              CreditCardsModel?>(
                            selector: (state) => state.creditCardsModelObj,
                            builder: (context, creditCardsModelObj) {
                              return ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    height: getVerticalSize(
                                      11,
                                    ),
                                  );
                                },
                                itemCount: creditCardsModelObj
                                        ?.listellipsethirtythreeItemList
                                        .length ??
                                    0,
                                itemBuilder: (context, index) {
                                  ListellipsethirtythreeItemModel model =
                                      creditCardsModelObj
                                                  ?.listellipsethirtythreeItemList[
                                              index] ??
                                          ListellipsethirtythreeItemModel();
                                  return ListellipsethirtythreeItemWidget(
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
                  Padding(
                    padding: getPadding(
                      top: 22,
                    ),
                    child: Text(
                      "lbl_card_list".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterSemiBold16,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 12,
                      right: 24,
                    ),
                    child: BlocSelector<CreditCardsBloc, CreditCardsState,
                        CreditCardsModel?>(
                      selector: (state) => state.creditCardsModelObj,
                      builder: (context, creditCardsModelObj) {
                        return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                12,
                              ),
                            );
                          },
                          itemCount:
                              creditCardsModelObj?.listfileItemList.length ?? 0,
                          itemBuilder: (context, index) {
                            ListfileItemModel model =
                                creditCardsModelObj?.listfileItemList[index] ??
                                    ListfileItemModel();
                            return ListfileItemWidget(
                              model,
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 23,
                    ),
                    child: Text(
                      "lbl_add_new_card".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterSemiBold16,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 15,
                      right: 24,
                    ),
                    padding: getPadding(
                      left: 20,
                      top: 17,
                      right: 20,
                      bottom: 17,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            283,
                          ),
                          child: Text(
                            "msg_credit_card_gen".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular12,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 20,
                          ),
                          child: Text(
                            "lbl_card_type".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular13Bluegray400,
                          ),
                        ),
                        BlocSelector<CreditCardsBloc, CreditCardsState,
                            TextEditingController?>(
                          selector: (state) => state.group572Controller,
                          builder: (context, group572Controller) {
                            return CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: group572Controller,
                              hintText: "lbl_classic".tr,
                              margin: getMargin(
                                top: 7,
                              ),
                              variant: TextFormFieldVariant.OutlineTeal50,
                            );
                          },
                        ),
                        Padding(
                          padding: getPadding(
                            top: 16,
                          ),
                          child: Text(
                            "lbl_name_on_card".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular13Bluegray400,
                          ),
                        ),
                        BlocSelector<CreditCardsBloc, CreditCardsState,
                            TextEditingController?>(
                          selector: (state) => state.group572OneController,
                          builder: (context, group572OneController) {
                            return CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: group572OneController,
                              hintText: "lbl_my_cards".tr,
                              margin: getMargin(
                                top: 8,
                              ),
                              variant: TextFormFieldVariant.OutlineTeal50,
                            );
                          },
                        ),
                        Padding(
                          padding: getPadding(
                            top: 16,
                          ),
                          child: Text(
                            "lbl_card_number".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular13Bluegray400,
                          ),
                        ),
                        BlocSelector<CreditCardsBloc, CreditCardsState,
                            TextEditingController?>(
                          selector: (state) => state.group572TwoController,
                          builder: (context, group572TwoController) {
                            return CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: group572TwoController,
                              hintText: "msg".tr,
                              margin: getMargin(
                                top: 8,
                              ),
                              variant: TextFormFieldVariant.OutlineTeal50,
                              textInputType: TextInputType.visiblePassword,
                              isObscureText: true,
                            );
                          },
                        ),
                        Padding(
                          padding: getPadding(
                            top: 17,
                          ),
                          child: Text(
                            "lbl_expiration_date".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular13Bluegray400,
                          ),
                        ),
                        BlocSelector<CreditCardsBloc, CreditCardsState,
                            TextEditingController?>(
                          selector: (state) => state.dateController,
                          builder: (context, dateController) {
                            return CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: dateController,
                              hintText: "lbl_25_january_2025".tr,
                              margin: getMargin(
                                top: 7,
                              ),
                              variant: TextFormFieldVariant.OutlineTeal50,
                              textInputAction: TextInputAction.done,
                            );
                          },
                        ),
                        CustomButton(
                          height: getVerticalSize(
                            40,
                          ),
                          text: "lbl_add_card".tr,
                          margin: getMargin(
                            top: 20,
                            bottom: 3,
                          ),
                          shape: ButtonShape.RoundedBorder7,
                          padding: ButtonPadding.PaddingAll11,
                          fontStyle: ButtonFontStyle.InterMedium15WhiteA700,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Text(
                      "lbl_card_setting".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterSemiBold16Bluegray80001,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 10,
                      right: 26,
                    ),
                    padding: getPadding(
                      all: 20,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgFloatingicon,
                              height: getSize(
                                45,
                              ),
                              width: getSize(
                                45,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 12,
                                top: 5,
                                bottom: 2,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_block_card".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterMedium14Bluegray900,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 4,
                                    ),
                                    child: Text(
                                      "msg_instantly_block".tr,
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
                        Padding(
                          padding: getPadding(
                            top: 15,
                            right: 88,
                          ),
                          child: BlocSelector<CreditCardsBloc, CreditCardsState,
                              CreditCardsModel?>(
                            selector: (state) => state.creditCardsModelObj,
                            builder: (context, creditCardsModelObj) {
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
                                itemCount: creditCardsModelObj
                                        ?.listlockItemList.length ??
                                    0,
                                itemBuilder: (context, index) {
                                  ListlockItemModel model = creditCardsModelObj
                                          ?.listlockItemList[index] ??
                                      ListlockItemModel();
                                  return ListlockItemWidget(
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
