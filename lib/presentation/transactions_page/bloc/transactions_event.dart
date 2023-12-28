// ignore_for_file: must_be_immutable

part of 'transactions_bloc.dart';

@immutable
abstract class TransactionsEvent extends Equatable {}

class TransactionsInitialEvent extends TransactionsEvent {
  @override
  List<Object?> get props => [];
}
