import '../models/transactions_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yarisingu_s_application2/core/app_export.dart';
import 'package:yarisingu_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class TransactionsItemWidget extends StatelessWidget {
  TransactionsItemWidget(this.transactionsItemModelObj);

  TransactionsItemModel transactionsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 35,
          width: 35,
          margin: getMargin(
            bottom: 1,
          ),
          variant: IconButtonVariant.OutlineRed700,
          shape: IconButtonShape.RoundedBorder17,
          child: CustomImageView(
            svgPath: ImageConstant.imgArrow,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                transactionsItemModelObj.typeTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterMedium13,
              ),
              Padding(
                padding: getPadding(
                  top: 4,
                ),
                child: Text(
                  transactionsItemModelObj.timeTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular12,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            top: 9,
            bottom: 10,
          ),
          child: Text(
            transactionsItemModelObj.priceTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterMedium13Red700,
          ),
        ),
      ],
    );
  }
}
