// ignore_for_file: must_be_immutable

part of 'accounts_bloc.dart';

class AccountsState extends Equatable {
  AccountsState({
    this.group420Controller,
    this.accountsModelObj,
  });

  TextEditingController? group420Controller;

  AccountsModel? accountsModelObj;

  @override
  List<Object?> get props => [
        group420Controller,
        accountsModelObj,
      ];
  AccountsState copyWith({
    TextEditingController? group420Controller,
    AccountsModel? accountsModelObj,
  }) {
    return AccountsState(
      group420Controller: group420Controller ?? this.group420Controller,
      accountsModelObj: accountsModelObj ?? this.accountsModelObj,
    );
  }
}
