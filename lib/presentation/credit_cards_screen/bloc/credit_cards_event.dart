// ignore_for_file: must_be_immutable

part of 'credit_cards_bloc.dart';

@immutable
abstract class CreditCardsEvent extends Equatable {}

class CreditCardsInitialEvent extends CreditCardsEvent {
  @override
  List<Object?> get props => [];
}
