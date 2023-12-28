// ignore_for_file: must_be_immutable

part of 'accounts_bloc.dart';

@immutable
abstract class AccountsEvent extends Equatable {}

class AccountsInitialEvent extends AccountsEvent {
  @override
  List<Object?> get props => [];
}
