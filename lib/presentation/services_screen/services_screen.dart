import '../services_screen/widgets/listlocation_item_widget.dart';
import '../services_screen/widgets/listquestion_item_widget.dart';
import 'bloc/services_bloc.dart';
import 'models/listlocation_item_model.dart';
import 'models/listquestion_item_model.dart';
import 'models/services_model.dart';
import 'package:flutter/material.dart';
import 'package:yarisingu_s_application2/core/app_export.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/appbar_circleimage.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/appbar_searchview.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:yarisingu_s_application2/widgets/app_bar/custom_app_bar.dart';

class ServicesScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ServicesBloc>(
      create: (context) => ServicesBloc(ServicesState(
        servicesModelObj: ServicesModel(),
      ))
        ..add(ServicesInitialEvent()),
      child: ServicesScreen(),
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
                    text: "lbl_services".tr,
                    margin: getMargin(
                      left: 97,
                      top: 3,
                      bottom: 6,
                    ),
                  ),
                  AppbarCircleimage(
                    imagePath: ImageConstant.imgEllipse3735x35,
                    margin: getMargin(
                      left: 86,
                    ),
                  ),
                ],
              ),
              BlocSelector<ServicesBloc, ServicesState, TextEditingController?>(
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
                      child: BlocSelector<ServicesBloc, ServicesState,
                          ServicesModel?>(
                        selector: (state) => state.servicesModelObj,
                        builder: (context, servicesModelObj) {
                          return ListView.separated(
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: getVerticalSize(
                                  15,
                                ),
                              );
                            },
                            itemCount:
                                servicesModelObj?.listlocationItemList.length ??
                                    0,
                            itemBuilder: (context, index) {
                              ListlocationItemModel model = servicesModelObj
                                      ?.listlocationItemList[index] ??
                                  ListlocationItemModel();
                              return ListlocationItemWidget(
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
                      "msg_bank_services_l".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterSemiBold16Bluegray80001,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 16,
                      right: 24,
                    ),
                    child: BlocSelector<ServicesBloc, ServicesState,
                        ServicesModel?>(
                      selector: (state) => state.servicesModelObj,
                      builder: (context, servicesModelObj) {
                        return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                10,
                              ),
                            );
                          },
                          itemCount:
                              servicesModelObj?.listquestionItemList.length ??
                                  0,
                          itemBuilder: (context, index) {
                            ListquestionItemModel model =
                                servicesModelObj?.listquestionItemList[index] ??
                                    ListquestionItemModel();
                            return ListquestionItemWidget(
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
          ),
        ),
      ),
    );
  }
}
