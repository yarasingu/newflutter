// ignore_for_file: must_be_immutable

part of 'loans_bloc.dart';

class LoansState extends Equatable {
  LoansState({
    this.group420Controller,
    this.loansModelObj,
  });

  TextEditingController? group420Controller;

  LoansModel? loansModelObj;

  @override
  List<Object?> get props => [
        group420Controller,
        loansModelObj,
      ];
  LoansState copyWith({
    TextEditingController? group420Controller,
    LoansModel? loansModelObj,
  }) {
    return LoansState(
      group420Controller: group420Controller ?? this.group420Controller,
      loansModelObj: loansModelObj ?? this.loansModelObj,
    );
  }
}
