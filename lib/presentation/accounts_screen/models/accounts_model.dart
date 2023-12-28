import 'package:equatable/equatable.dart';
import 'accounts_item_model.dart';
import 'listalarm_item_model.dart';
import 'listrefresh_item_model.dart';

// ignore: must_be_immutable
class AccountsModel extends Equatable {
  AccountsModel(
      {this.accountsItemList = const [],
      this.listalarmItemList = const [],
      this.listrefreshItemList = const []});

  List<AccountsItemModel> accountsItemList;

  List<ListalarmItemModel> listalarmItemList;

  List<ListrefreshItemModel> listrefreshItemList;

  AccountsModel copyWith(
      {List<AccountsItemModel>? accountsItemList,
      List<ListalarmItemModel>? listalarmItemList,
      List<ListrefreshItemModel>? listrefreshItemList}) {
    return AccountsModel(
      accountsItemList: accountsItemList ?? this.accountsItemList,
      listalarmItemList: listalarmItemList ?? this.listalarmItemList,
      listrefreshItemList: listrefreshItemList ?? this.listrefreshItemList,
    );
  }

  @override
  List<Object?> get props =>
      [accountsItemList, listalarmItemList, listrefreshItemList];
}
