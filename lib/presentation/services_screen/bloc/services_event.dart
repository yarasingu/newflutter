// ignore_for_file: must_be_immutable

part of 'services_bloc.dart';

@immutable
abstract class ServicesEvent extends Equatable {}

class ServicesInitialEvent extends ServicesEvent {
  @override
  List<Object?> get props => [];
}
