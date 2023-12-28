import '../models/listrefresh_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yarisingu_s_application2/core/app_export.dart';
import 'package:yarisingu_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListrefreshItemWidget extends StatelessWidget {
  ListrefreshItemWidget(this.listrefreshItemModelObj);

  ListrefreshItemModel listrefreshItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomIconButton(
          height: 45,
          width: 45,
          child: CustomImageView(
            svgPath: ImageConstant.imgRefresh,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 12,
            top: 6,
            bottom: 2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                listrefreshItemModelObj.storenameTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterMedium14Bluegray80001,
              ),
              Padding(
                padding: getPadding(
                  top: 3,
                ),
                child: Text(
                  listrefreshItemModelObj.timeagoTxt,
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
            bottom: 12,
          ),
          child: Text(
            listrefreshItemModelObj.priceTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterBold14,
          ),
        ),
      ],
    );
  }
}
