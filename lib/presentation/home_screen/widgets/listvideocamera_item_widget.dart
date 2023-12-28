import '../models/listvideocamera_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yarisingu_s_application2/core/app_export.dart';
import 'package:yarisingu_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListvideocameraItemWidget extends StatelessWidget {
  ListvideocameraItemWidget(this.listvideocameraItemModelObj);

  ListvideocameraItemModel listvideocameraItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 50,
          width: 50,
          shape: IconButtonShape.CircleBorder25,
          child: CustomImageView(
            svgPath: ImageConstant.imgVideocamera,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 15,
            top: 8,
            bottom: 5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                listvideocameraItemModelObj.depositfrommyTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterMedium14Bluegray900,
              ),
              Padding(
                padding: getPadding(
                  top: 3,
                ),
                child: Text(
                  listvideocameraItemModelObj.dateTxt,
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
            top: 18,
            bottom: 18,
          ),
          child: Text(
            listvideocameraItemModelObj.priceTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterMedium11,
          ),
        ),
      ],
    );
  }
}
