import 'package:equatable/equatable.dart';
import 'listuser1_item_model.dart';
import 'listprice_item_model.dart';

// ignore: must_be_immutable
class LoansModel extends Equatable {
  LoansModel(
      {this.listuser1ItemList = const [], this.listpriceItemList = const []});

  List<Listuser1ItemModel> listuser1ItemList;

  List<ListpriceItemModel> listpriceItemList;

  LoansModel copyWith(
      {List<Listuser1ItemModel>? listuser1ItemList,
      List<ListpriceItemModel>? listpriceItemList}) {
    return LoansModel(
      listuser1ItemList: listuser1ItemList ?? this.listuser1ItemList,
      listpriceItemList: listpriceItemList ?? this.listpriceItemList,
    );
  }

  @override
  List<Object?> get props => [listuser1ItemList, listpriceItemList];
}
