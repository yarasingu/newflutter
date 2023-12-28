import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listuser1_item_model.dart';
import '../models/listprice_item_model.dart';
import 'package:yarisingu_s_application2/presentation/loans_screen/models/loans_model.dart';
part 'loans_event.dart';
part 'loans_state.dart';

class LoansBloc extends Bloc<LoansEvent, LoansState> {
  LoansBloc(LoansState initialState) : super(initialState) {
    on<LoansInitialEvent>(_onInitialize);
  }

  List<Listuser1ItemModel> fillListuser1ItemList() {
    return List.generate(4, (index) => Listuser1ItemModel());
  }

  List<ListpriceItemModel> fillListpriceItemList() {
    return List.generate(8, (index) => ListpriceItemModel());
  }

  _onInitialize(
    LoansInitialEvent event,
    Emitter<LoansState> emit,
  ) async {
    emit(state.copyWith(
      group420Controller: TextEditingController(),
    ));
    emit(state.copyWith(
        loansModelObj: state.loansModelObj?.copyWith(
      listuser1ItemList: fillListuser1ItemList(),
      listpriceItemList: fillListpriceItemList(),
    )));
  }
}
