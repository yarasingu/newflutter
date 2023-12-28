import 'package:equatable/equatable.dart';
import 'transactions_item_model.dart';

// ignore: must_be_immutable
class TransactionsModel extends Equatable {
  TransactionsModel({this.transactionsItemList = const []});

  List<TransactionsItemModel> transactionsItemList;

  TransactionsModel copyWith(
      {List<TransactionsItemModel>? transactionsItemList}) {
    return TransactionsModel(
      transactionsItemList: transactionsItemList ?? this.transactionsItemList,
    );
  }

  @override
  List<Object?> get props => [transactionsItemList];
}
