import '../transactions_page/widgets/transactions_item_widget.dart';
import 'bloc/transactions_bloc.dart';
import 'models/transactions_item_model.dart';
import 'models/transactions_model.dart';
import 'package:flutter/material.dart';
import 'package:yarisingu_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class TransactionsPage extends StatefulWidget {
  @override
  _TransactionsPageState createState() => _TransactionsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<TransactionsBloc>(
      create: (context) => TransactionsBloc(TransactionsState(
        transactionsModelObj: TransactionsModel(),
      ))
        ..add(TransactionsInitialEvent()),
      child: TransactionsPage(),
    );
  }
}

class _TransactionsPageState extends State<TransactionsPage>
    with AutomaticKeepAliveClientMixin<TransactionsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 46,
                  top: 37,
                  right: 44,
                ),
                child: BlocSelector<TransactionsBloc, TransactionsState,
                    TransactionsModel?>(
                  selector: (state) => state.transactionsModelObj,
                  builder: (context, transactionsModelObj) {
                    return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return Padding(
                          padding: getPadding(
                            top: 9.5,
                            bottom: 9.5,
                          ),
                          child: SizedBox(
                            width: getHorizontalSize(
                              285,
                            ),
                            child: Divider(
                              height: getVerticalSize(
                                1,
                              ),
                              thickness: getVerticalSize(
                                1,
                              ),
                              color: ColorConstant.gray10002,
                            ),
                          ),
                        );
                      },
                      itemCount:
                          transactionsModelObj?.transactionsItemList.length ??
                              0,
                      itemBuilder: (context, index) {
                        TransactionsItemModel model =
                            transactionsModelObj?.transactionsItemList[index] ??
                                TransactionsItemModel();
                        return TransactionsItemWidget(
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
    );
  }
}
