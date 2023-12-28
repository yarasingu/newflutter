import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yarisingu_s_application2/presentation/side_menu_draweritem/models/side_menu_model.dart';
part 'side_menu_event.dart';
part 'side_menu_state.dart';

class SideMenuBloc extends Bloc<SideMenuEvent, SideMenuState> {
  SideMenuBloc(SideMenuState initialState) : super(initialState) {
    on<SideMenuInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SideMenuInitialEvent event,
    Emitter<SideMenuState> emit,
  ) async {}
}
