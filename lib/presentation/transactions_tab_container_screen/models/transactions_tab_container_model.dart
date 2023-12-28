import 'package:equatable/equatable.dart';
import 'listbalance1_item_model.dart';

// ignore: must_be_immutable
class TransactionsTabContainerModel extends Equatable {
  TransactionsTabContainerModel({this.listbalance1ItemList = const []});

  List<Listbalance1ItemModel> listbalance1ItemList;

  TransactionsTabContainerModel copyWith(
      {List<Listbalance1ItemModel>? listbalance1ItemList}) {
    return TransactionsTabContainerModel(
      listbalance1ItemList: listbalance1ItemList ?? this.listbalance1ItemList,
    );
  }

  @override
  List<Object?> get props => [listbalance1ItemList];
}
