import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listbalance1_item_model.dart';
import 'package:yarisingu_s_application2/presentation/transactions_tab_container_screen/models/transactions_tab_container_model.dart';
part 'transactions_tab_container_event.dart';
part 'transactions_tab_container_state.dart';

class TransactionsTabContainerBloc
    extends Bloc<TransactionsTabContainerEvent, TransactionsTabContainerState> {
  TransactionsTabContainerBloc(TransactionsTabContainerState initialState)
      : super(initialState) {
    on<TransactionsTabContainerInitialEvent>(_onInitialize);
  }

  List<Listbalance1ItemModel> fillListbalance1ItemList() {
    return List.generate(2, (index) => Listbalance1ItemModel());
  }

  _onInitialize(
    TransactionsTabContainerInitialEvent event,
    Emitter<TransactionsTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      group420Controller: TextEditingController(),
    ));
    emit(state.copyWith(
        transactionsTabContainerModelObj:
            state.transactionsTabContainerModelObj?.copyWith(
      listbalance1ItemList: fillListbalance1ItemList(),
    )));
  }
}
