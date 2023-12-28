import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listlocation_item_model.dart';
import '../models/listquestion_item_model.dart';
import 'package:yarisingu_s_application2/presentation/services_screen/models/services_model.dart';
part 'services_event.dart';
part 'services_state.dart';

class ServicesBloc extends Bloc<ServicesEvent, ServicesState> {
  ServicesBloc(ServicesState initialState) : super(initialState) {
    on<ServicesInitialEvent>(_onInitialize);
  }

  List<ListlocationItemModel> fillListlocationItemList() {
    return List.generate(3, (index) => ListlocationItemModel());
  }

  List<ListquestionItemModel> fillListquestionItemList() {
    return List.generate(6, (index) => ListquestionItemModel());
  }

  _onInitialize(
    ServicesInitialEvent event,
    Emitter<ServicesState> emit,
  ) async {
    emit(state.copyWith(
      group420Controller: TextEditingController(),
    ));
    emit(state.copyWith(
        servicesModelObj: state.servicesModelObj?.copyWith(
      listlocationItemList: fillListlocationItemList(),
      listquestionItemList: fillListquestionItemList(),
    )));
  }
}
