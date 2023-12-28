import 'package:equatable/equatable.dart';
import 'listbalance2_item_model.dart';
import 'listellipsethirtythree_item_model.dart';
import 'listfile_item_model.dart';
import 'listlock_item_model.dart';

// ignore: must_be_immutable
class CreditCardsModel extends Equatable {
  CreditCardsModel(
      {this.listbalance2ItemList = const [],
      this.listellipsethirtythreeItemList = const [],
      this.listfileItemList = const [],
      this.listlockItemList = const []});

  List<Listbalance2ItemModel> listbalance2ItemList;

  List<ListellipsethirtythreeItemModel> listellipsethirtythreeItemList;

  List<ListfileItemModel> listfileItemList;

  List<ListlockItemModel> listlockItemList;

  CreditCardsModel copyWith(
      {List<Listbalance2ItemModel>? listbalance2ItemList,
      List<ListellipsethirtythreeItemModel>? listellipsethirtythreeItemList,
      List<ListfileItemModel>? listfileItemList,
      List<ListlockItemModel>? listlockItemList}) {
    return CreditCardsModel(
      listbalance2ItemList: listbalance2ItemList ?? this.listbalance2ItemList,
      listellipsethirtythreeItemList:
          listellipsethirtythreeItemList ?? this.listellipsethirtythreeItemList,
      listfileItemList: listfileItemList ?? this.listfileItemList,
      listlockItemList: listlockItemList ?? this.listlockItemList,
    );
  }

  @override
  List<Object?> get props => [
        listbalance2ItemList,
        listellipsethirtythreeItemList,
        listfileItemList,
        listlockItemList
      ];
}
