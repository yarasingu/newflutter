// ignore_for_file: must_be_immutable

part of 'home_bloc.dart';

class HomeState extends Equatable {
  HomeState({
    this.group420Controller,
    this.id,
    this.homeModelObj,
  });

  TextEditingController? group420Controller;

  HomeModel? homeModelObj;

  var id;

  @override
  List<Object?> get props => [
        group420Controller,
        id,
        homeModelObj,
      ];
  HomeState copyWith({
    TextEditingController? group420Controller,
    var id,
    HomeModel? homeModelObj,
  }) {
    return HomeState(
      group420Controller: group420Controller ?? this.group420Controller,
      id: id ?? this.id,
      homeModelObj: homeModelObj ?? this.homeModelObj,
    );
  }
}
