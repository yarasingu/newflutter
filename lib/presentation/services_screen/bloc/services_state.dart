// ignore_for_file: must_be_immutable

part of 'services_bloc.dart';

class ServicesState extends Equatable {
  ServicesState({
    this.group420Controller,
    this.servicesModelObj,
  });

  TextEditingController? group420Controller;

  ServicesModel? servicesModelObj;

  @override
  List<Object?> get props => [
        group420Controller,
        servicesModelObj,
      ];
  ServicesState copyWith({
    TextEditingController? group420Controller,
    ServicesModel? servicesModelObj,
  }) {
    return ServicesState(
      group420Controller: group420Controller ?? this.group420Controller,
      servicesModelObj: servicesModelObj ?? this.servicesModelObj,
    );
  }
}
