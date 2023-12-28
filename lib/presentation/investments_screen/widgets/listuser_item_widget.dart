import '../models/listuser_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yarisingu_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class ListuserItemWidget extends StatelessWidget {
  ListuserItemWidget(this.listuserItemModelObj);

  ListuserItemModel listuserItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 12,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgUser,
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
              top: 6,
              bottom: 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  listuserItemModelObj.typeTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium14Bluegray900,
                ),
                Padding(
                  padding: getPadding(
                    top: 3,
                  ),
                  child: Text(
                    "msg_e_commerce_mar".tr,
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
              right: 4,
              bottom: 12,
            ),
            child: Text(
              listuserItemModelObj.growthTxt,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterSemiBold14Green600,
            ),
          ),
        ],
      ),
    );
  }
}
