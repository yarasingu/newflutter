import '../models/listcontrast_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yarisingu_s_application2/core/app_export.dart';
import 'package:yarisingu_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListcontrastItemWidget extends StatelessWidget {
  ListcontrastItemWidget(this.listcontrastItemModelObj);

  ListcontrastItemModel listcontrastItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 24,
        top: 20,
        right: 24,
        bottom: 20,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 45,
            width: 45,
            shape: IconButtonShape.CircleBorder20,
            child: CustomImageView(
              svgPath: ImageConstant.imgContrast45x45,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 16,
              top: 1,
              bottom: 1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  listcontrastItemModelObj.totalInvestedAmountTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular12,
                ),
                Padding(
                  padding: getPadding(
                    top: 7,
                  ),
                  child: Text(
                    listcontrastItemModelObj.priceTxt,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterSemiBold16Indigo600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
