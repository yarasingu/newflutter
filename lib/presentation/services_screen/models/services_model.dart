import 'package:equatable/equatable.dart';
import 'listlocation_item_model.dart';
import 'listquestion_item_model.dart';

// ignore: must_be_immutable
class ServicesModel extends Equatable {
  ServicesModel(
      {this.listlocationItemList = const [],
      this.listquestionItemList = const []});

  List<ListlocationItemModel> listlocationItemList;

  List<ListquestionItemModel> listquestionItemList;

  ServicesModel copyWith(
      {List<ListlocationItemModel>? listlocationItemList,
      List<ListquestionItemModel>? listquestionItemList}) {
    return ServicesModel(
      listlocationItemList: listlocationItemList ?? this.listlocationItemList,
      listquestionItemList: listquestionItemList ?? this.listquestionItemList,
    );
  }

  @override
  List<Object?> get props => [listlocationItemList, listquestionItemList];
}
