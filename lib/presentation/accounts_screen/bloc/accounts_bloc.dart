import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/accounts_item_model.dart';
import '../models/listalarm_item_model.dart';
import '../models/listrefresh_item_model.dart';
import 'package:yarisingu_s_application2/presentation/accounts_screen/models/accounts_model.dart';
part 'accounts_event.dart';
part 'accounts_state.dart';

class AccountsBloc extends Bloc<AccountsEvent, AccountsState> {
  AccountsBloc(AccountsState initialState) : super(initialState) {
    on<AccountsInitialEvent>(_onInitialize);
  }

  List<AccountsItemModel> fillAccountsItemList() {
    return List.generate(4, (index) => AccountsItemModel());
  }

  List<ListalarmItemModel> fillListalarmItemList() {
    return List.generate(3, (index) => ListalarmItemModel());
  }

  List<ListrefreshItemModel> fillListrefreshItemList() {
    return List.generate(4, (index) => ListrefreshItemModel());
  }

  _onInitialize(
    AccountsInitialEvent event,
    Emitter<AccountsState> emit,
  ) async {
    emit(state.copyWith(group420Controller: TextEditingController()));
    emit(state.copyWith(
        accountsModelObj: state.accountsModelObj?.copyWith(
            accountsItemList: fillAccountsItemList(),
            listalarmItemList: fillListalarmItemList(),
            listrefreshItemList: fillListrefreshItemList())));
  }
}
