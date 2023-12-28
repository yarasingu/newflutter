// ignore_for_file: must_be_immutable

part of 'loans_bloc.dart';

@immutable
abstract class LoansEvent extends Equatable {}

class LoansInitialEvent extends LoansEvent {
  @override
  List<Object?> get props => [];
}
