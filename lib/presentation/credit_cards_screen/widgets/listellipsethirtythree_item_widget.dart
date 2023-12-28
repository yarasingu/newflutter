import '../models/listellipsethirtythree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yarisingu_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class ListellipsethirtythreeItemWidget extends StatelessWidget {
  ListellipsethirtythreeItemWidget(this.listellipsethirtythreeItemModelObj);

  ListellipsethirtythreeItemModel listellipsethirtythreeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: getSize(
            12,
          ),
          width: getSize(
            12,
          ),
          margin: getMargin(
            top: 1,
            bottom: 1,
          ),
          decoration: BoxDecoration(
            color: ColorConstant.indigo100,
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                6,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 10,
          ),
          child: Text(
            listellipsethirtythreeItemModelObj.dBLBankTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterMedium12Indigo30001,
          ),
        ),
        Container(
          height: getSize(
            12,
          ),
          width: getSize(
            12,
          ),
          margin: getMargin(
            left: 21,
            top: 1,
            bottom: 1,
          ),
          decoration: BoxDecoration(
            color: ColorConstant.indigo500,
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                6,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 10,
          ),
          child: Text(
            listellipsethirtythreeItemModelObj.bRCBankTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterMedium12Indigo30001,
          ),
        ),
      ],
    );
  }
}
