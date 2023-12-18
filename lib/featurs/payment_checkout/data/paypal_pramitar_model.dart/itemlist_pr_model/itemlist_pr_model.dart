import 'item_list.dart';

class ItemlistPrModel {
  ItemList? itemList;

  ItemlistPrModel({this.itemList});

  factory ItemlistPrModel.fromJson(Map<String, dynamic> json) {
    return ItemlistPrModel(
      itemList: json['item_list'] == null
          ? null
          : ItemList.fromJson(json['item_list'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'item_list': itemList?.toJson(),
      };
}
