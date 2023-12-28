import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listbalance2_item_model.dart';
import '../models/listellipsethirtythree_item_model.dart';
import '../models/listfile_item_model.dart';
import '../models/listlock_item_model.dart';
import 'package:yarisingu_s_application2/presentation/credit_cards_screen/models/credit_cards_model.dart';
part 'credit_cards_event.dart';
part 'credit_cards_state.dart';

class CreditCardsBloc extends Bloc<CreditCardsEvent, CreditCardsState> {
  CreditCardsBloc(CreditCardsState initialState) : super(initialState) {
    on<CreditCardsInitialEvent>(_onInitialize);
  }

  List<Listbalance2ItemModel> fillListbalance2ItemList() {
    return List.generate(3, (index) => Listbalance2ItemModel());
  }

  List<ListellipsethirtythreeItemModel> fillListellipsethirtythreeItemList() {
    return List.generate(2, (index) => ListellipsethirtythreeItemModel());
  }

  List<ListfileItemModel> fillListfileItemList() {
    return List.generate(3, (index) => ListfileItemModel());
  }

  List<ListlockItemModel> fillListlockItemList() {
    return List.generate(4, (index) => ListlockItemModel());
  }

  _onInitialize(
    CreditCardsInitialEvent event,
    Emitter<CreditCardsState> emit,
  ) async {
    emit(state.copyWith(
      group572Controller: TextEditingController(),
      group572OneController: TextEditingController(),
      group572TwoController: TextEditingController(),
      dateController: TextEditingController(),
      group420Controller: TextEditingController(),
    ));
    emit(state.copyWith(
        creditCardsModelObj: state.creditCardsModelObj?.copyWith(
      listbalance2ItemList: fillListbalance2ItemList(),
      listellipsethirtythreeItemList: fillListellipsethirtythreeItemList(),
      listfileItemList: fillListfileItemList(),
      listlockItemList: fillListlockItemList(),
    )));
  }
}
