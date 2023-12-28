import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:yarisingu_s_application2/presentation/setting_edit_profile_page/models/setting_edit_profile_model.dart';import 'package:yarisingu_s_application2/data/models/me/get_me_resp.dart';import 'dart:async';import 'package:yarisingu_s_application2/data/repository/repository.dart';import 'package:fluttertoast/fluttertoast.dart';part 'setting_edit_profile_event.dart';part 'setting_edit_profile_state.dart';class SettingEditProfileBloc extends Bloc<SettingEditProfileEvent, SettingEditProfileState> {SettingEditProfileBloc(SettingEditProfileState initialState) : super(initialState) { on<SettingEditProfileInitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown);on<FetchMeEvent>(_callFetchMe); }

final _repository = Repository();

var getMeResp = GetMeResp();

_changeDropDown(ChangeDropDownEvent event, Emitter<SettingEditProfileState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
_onInitialize(SettingEditProfileInitialEvent event, Emitter<SettingEditProfileState> emit, ) async  { emit(state.copyWith(languageController: TextEditingController(), languageOneController: TextEditingController(), emailOneController: TextEditingController(), passwordOneController: TextEditingController(), group572Controller: TextEditingController(), group572OneController: TextEditingController(), group572TwoController: TextEditingController(), zipcodeController: TextEditingController(), group572ThreeController: TextEditingController())); emit(state.copyWith(settingEditProfileModelObj: state.settingEditProfileModelObj?.copyWith(dropdownItemList: fillDropdownItemList())));
add(FetchMeEvent(onFetchMeEventError: () {

_onFetchMeEventError();
},),);
 } 
FutureOr<void> _callFetchMe(FetchMeEvent event, Emitter<SettingEditProfileState> emit, ) async  { await _repository.fetchMe(
headers: {'Content-type': 'application/json','Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNmZiNzBhZWJiM2RiYjVlYmVkYTBmMiIsInVzZXJuYW1lIjoiT3Jpb24xNyIsImlhdCI6MTY3ODY4OTgyMn0.fh9TL3QIkwUvqXNQ9ztlvb5qXnN-st_70G9CsvVB0M8',},
)
.then((value) async {

	getMeResp = value;
_onFetchMeSuccess(value,emit);
})
.onError((error,stackTrace) {

	//implement error call
_onFetchMeError();
event.onFetchMeEventError.call();
})
; } 
void _onFetchMeSuccess(GetMeResp resp, Emitter<SettingEditProfileState> emit, ) { 
emit(state.copyWith(settingEditProfileModelObj: state.settingEditProfileModelObj?.copyWith(),languageController : TextEditingController(text: resp.data!.username!.toString()),
emailOneController : TextEditingController(text: resp.data!.email!.toString()),
languageController : TextEditingController(text: resp.data!.name!.toString()),
),); } 
void _onFetchMeError() { 
 //implement error method body...
 } 
void _onFetchMeEventError() { 
Fluttertoast.showToast(msg: .message!.toString(),); } 
 }
