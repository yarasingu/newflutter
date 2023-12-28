import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listcontrast_item_model.dart';
import '../models/listuser_item_model.dart';
import '../models/listslno_item_model.dart';
import 'package:yarisingu_s_application2/presentation/investments_screen/models/investments_model.dart';
part 'investments_event.dart';
part 'investments_state.dart';

class InvestmentsBloc extends Bloc<InvestmentsEvent, InvestmentsState> {
  InvestmentsBloc(InvestmentsState initialState) : super(initialState) {
    on<InvestmentsInitialEvent>(_onInitialize);
  }

  List<ListcontrastItemModel> fillListcontrastItemList() {
    return List.generate(3, (index) => ListcontrastItemModel());
  }

  List<ListuserItemModel> fillListuserItemList() {
    return List.generate(3, (index) => ListuserItemModel());
  }

  List<ListslnoItemModel> fillListslnoItemList() {
    return List.generate(6, (index) => ListslnoItemModel());
  }

  _onInitialize(
    InvestmentsInitialEvent event,
    Emitter<InvestmentsState> emit,
  ) async {
    emit(state.copyWith(
      group420Controller: TextEditingController(),
    ));
    emit(state.copyWith(
        investmentsModelObj: state.investmentsModelObj?.copyWith(
      listcontrastItemList: fillListcontrastItemList(),
      listuserItemList: fillListuserItemList(),
      listslnoItemList: fillListslnoItemList(),
    )));
  }
}
