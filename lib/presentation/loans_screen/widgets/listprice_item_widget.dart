import '../models/listprice_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yarisingu_s_application2/core/app_export.dart';
import 'package:yarisingu_s_application2/widgets/custom_button.dart';

// ignore: must_be_immutable
class ListpriceItemWidget extends StatelessWidget {
  ListpriceItemWidget(this.listpriceItemModelObj);

  ListpriceItemModel listpriceItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: getPadding(
            top: 5,
            bottom: 4,
          ),
          child: Text(
            listpriceItemModelObj.priceTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterRegular12Bluegray900,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 52,
            top: 5,
            bottom: 4,
          ),
          child: Text(
            listpriceItemModelObj.priceOneTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterRegular12Bluegray900,
          ),
        ),
        CustomButton(
          height: getVerticalSize(
            25,
          ),
          width: getHorizontalSize(
            70,
          ),
          text: "lbl_repay".tr,
          margin: getMargin(
            left: 60,
          ),
          variant: ButtonVariant.OutlineIndigo500,
        ),
      ],
    );
  }
}
