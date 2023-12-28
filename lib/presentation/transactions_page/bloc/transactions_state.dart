// ignore_for_file: must_be_immutable

part of 'transactions_bloc.dart';

class TransactionsState extends Equatable {
  TransactionsState({this.transactionsModelObj});

  TransactionsModel? transactionsModelObj;

  @override
  List<Object?> get props => [
        transactionsModelObj,
      ];
  TransactionsState copyWith({TransactionsModel? transactionsModelObj}) {
    return TransactionsState(
      transactionsModelObj: transactionsModelObj ?? this.transactionsModelObj,
    );
  }
}
