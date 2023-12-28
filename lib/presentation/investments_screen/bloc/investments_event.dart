// ignore_for_file: must_be_immutable

part of 'investments_bloc.dart';

@immutable
abstract class InvestmentsEvent extends Equatable {}

class InvestmentsInitialEvent extends InvestmentsEvent {
  @override
  List<Object?> get props => [];
}
