// ignore_for_file: must_be_immutable

part of 'transactions_tab_container_bloc.dart';

@immutable
abstract class TransactionsTabContainerEvent extends Equatable {}

class TransactionsTabContainerInitialEvent
    extends TransactionsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
