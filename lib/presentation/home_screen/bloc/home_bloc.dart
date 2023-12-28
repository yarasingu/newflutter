import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listbalance_item_model.dart';
import '../models/listvideocamera_item_model.dart';
import 'package:yarisingu_s_application2/presentation/home_screen/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }

  List<ListbalanceItemModel> fillListbalanceItemList() {
    return List.generate(2, (index) => ListbalanceItemModel());
  }

  List<ListvideocameraItemModel> fillListvideocameraItemList() {
    return List.generate(3, (index) => ListvideocameraItemModel());
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(group420Controller: TextEditingController()));
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
            listbalanceItemList: fillListbalanceItemList(),
            listvideocameraItemList: fillListvideocameraItemList())));
  }
}
