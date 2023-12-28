import '../models/listalarm_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yarisingu_s_application2/core/app_export.dart';
import 'package:yarisingu_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListalarmItemWidget extends StatelessWidget {
  ListalarmItemWidget(this.listalarmItemModelObj);

  ListalarmItemModel listalarmItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 45,
          width: 45,
          child: CustomImageView(
            svgPath: ImageConstant.imgAlarm,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 12,
            top: 6,
            bottom: 3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                listalarmItemModelObj.subscriptiontypeTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterMedium14Bluegray900,
              ),
              Padding(
                padding: getPadding(
                  top: 2,
                ),
                child: Text(
                  "lbl_25_jan_2021".tr,
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
            top: 15,
            bottom: 14,
          ),
          child: Text(
            listalarmItemModelObj.priceTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterMedium12Red700,
          ),
        ),
      ],
    );
  }
}
