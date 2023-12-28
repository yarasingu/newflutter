import 'package:equatable/equatable.dart';
import 'listbalance_item_model.dart';
import 'listvideocamera_item_model.dart';

// ignore: must_be_immutable
class HomeModel extends Equatable {
  HomeModel(
      {this.listbalanceItemList = const [],
      this.listvideocameraItemList = const []});

  List<ListbalanceItemModel> listbalanceItemList;

  List<ListvideocameraItemModel> listvideocameraItemList;

  HomeModel copyWith(
      {List<ListbalanceItemModel>? listbalanceItemList,
      List<ListvideocameraItemModel>? listvideocameraItemList}) {
    return HomeModel(
      listbalanceItemList: listbalanceItemList ?? this.listbalanceItemList,
      listvideocameraItemList:
          listvideocameraItemList ?? this.listvideocameraItemList,
    );
  }

  @override
  List<Object?> get props => [listbalanceItemList, listvideocameraItemList];
}
