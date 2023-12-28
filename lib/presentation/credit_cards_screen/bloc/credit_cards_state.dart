// ignore_for_file: must_be_immutable

part of 'credit_cards_bloc.dart';

class CreditCardsState extends Equatable {
  CreditCardsState({
    this.group572Controller,
    this.group572OneController,
    this.group572TwoController,
    this.dateController,
    this.group420Controller,
    this.creditCardsModelObj,
  });

  TextEditingController? group572Controller;

  TextEditingController? group572OneController;

  TextEditingController? group572TwoController;

  TextEditingController? dateController;

  TextEditingController? group420Controller;

  CreditCardsModel? creditCardsModelObj;

  @override
  List<Object?> get props => [
        group572Controller,
        group572OneController,
        group572TwoController,
        dateController,
        group420Controller,
        creditCardsModelObj,
      ];
  CreditCardsState copyWith({
    TextEditingController? group572Controller,
    TextEditingController? group572OneController,
    TextEditingController? group572TwoController,
    TextEditingController? dateController,
    TextEditingController? group420Controller,
    CreditCardsModel? creditCardsModelObj,
  }) {
    return CreditCardsState(
      group572Controller: group572Controller ?? this.group572Controller,
      group572OneController:
          group572OneController ?? this.group572OneController,
      group572TwoController:
          group572TwoController ?? this.group572TwoController,
      dateController: dateController ?? this.dateController,
      group420Controller: group420Controller ?? this.group420Controller,
      creditCardsModelObj: creditCardsModelObj ?? this.creditCardsModelObj,
    );
  }
}
