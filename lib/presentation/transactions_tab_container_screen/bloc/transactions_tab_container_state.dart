// ignore_for_file: must_be_immutable

part of 'transactions_tab_container_bloc.dart';

class TransactionsTabContainerState extends Equatable {
  TransactionsTabContainerState({
    this.group420Controller,
    this.transactionsTabContainerModelObj,
  });

  TextEditingController? group420Controller;

  TransactionsTabContainerModel? transactionsTabContainerModelObj;

  @override
  List<Object?> get props => [
        group420Controller,
        transactionsTabContainerModelObj,
      ];
  TransactionsTabContainerState copyWith({
    TextEditingController? group420Controller,
    TransactionsTabContainerModel? transactionsTabContainerModelObj,
  }) {
    return TransactionsTabContainerState(
      group420Controller: group420Controller ?? this.group420Controller,
      transactionsTabContainerModelObj: transactionsTabContainerModelObj ??
          this.transactionsTabContainerModelObj,
    );
  }
}
