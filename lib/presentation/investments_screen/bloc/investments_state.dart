// ignore_for_file: must_be_immutable

part of 'investments_bloc.dart';

class InvestmentsState extends Equatable {
  InvestmentsState({
    this.group420Controller,
    this.investmentsModelObj,
  });

  TextEditingController? group420Controller;

  InvestmentsModel? investmentsModelObj;

  @override
  List<Object?> get props => [
        group420Controller,
        investmentsModelObj,
      ];
  InvestmentsState copyWith({
    TextEditingController? group420Controller,
    InvestmentsModel? investmentsModelObj,
  }) {
    return InvestmentsState(
      group420Controller: group420Controller ?? this.group420Controller,
      investmentsModelObj: investmentsModelObj ?? this.investmentsModelObj,
    );
  }
}
