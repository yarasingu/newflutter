// ignore_for_file: must_be_immutable

part of 'side_menu_bloc.dart';

@immutable
abstract class SideMenuEvent extends Equatable {}

class SideMenuInitialEvent extends SideMenuEvent {
  @override
  List<Object?> get props => [];
}
