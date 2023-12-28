import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/transactions_item_model.dart';
import 'package:yarisingu_s_application2/presentation/transactions_page/models/transactions_model.dart';
part 'transactions_event.dart';
part 'transactions_state.dart';

class TransactionsBloc extends Bloc<TransactionsEvent, TransactionsState> {
  TransactionsBloc(TransactionsState initialState) : super(initialState) {
    on<TransactionsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TransactionsInitialEvent event,
    Emitter<TransactionsState> emit,
  ) async {
    emit(state.copyWith(
        transactionsModelObj: state.transactionsModelObj?.copyWith(
      transactionsItemList: fillTransactionsItemList(),
    )));
  }

  List<TransactionsItemModel> fillTransactionsItemList() {
    return List.generate(5, (index) => TransactionsItemModel());
  }
}
