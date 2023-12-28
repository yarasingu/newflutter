// ignore_for_file: must_be_immutable

part of 'get_started_bloc.dart';

@immutable
abstract class GetStartedEvent extends Equatable {}

class GetStartedInitialEvent extends GetStartedEvent {
  @override
  List<Object?> get props => [];
}

class GoogleAuthEvent extends GetStartedEvent {
  GoogleAuthEvent();

  @override
  List<Object?> get props => [];
}
