import 'package:equatable/equatable.dart';
import 'listcontrast_item_model.dart';
import 'listuser_item_model.dart';
import 'listslno_item_model.dart';

// ignore: must_be_immutable
class InvestmentsModel extends Equatable {
  InvestmentsModel(
      {this.listcontrastItemList = const [],
      this.listuserItemList = const [],
      this.listslnoItemList = const []});

  List<ListcontrastItemModel> listcontrastItemList;

  List<ListuserItemModel> listuserItemList;

  List<ListslnoItemModel> listslnoItemList;

  InvestmentsModel copyWith(
      {List<ListcontrastItemModel>? listcontrastItemList,
      List<ListuserItemModel>? listuserItemList,
      List<ListslnoItemModel>? listslnoItemList}) {
    return InvestmentsModel(
      listcontrastItemList: listcontrastItemList ?? this.listcontrastItemList,
      listuserItemList: listuserItemList ?? this.listuserItemList,
      listslnoItemList: listslnoItemList ?? this.listslnoItemList,
    );
  }

  @override
  List<Object?> get props =>
      [listcontrastItemList, listuserItemList, listslnoItemList];
}
