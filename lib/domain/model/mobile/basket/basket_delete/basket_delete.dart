// To parse this JSON data, do
//
//     final basketDelete = basketDeleteFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'basket_delete.freezed.dart';
part 'basket_delete.g.dart';

BasketDelete basketDeleteFromJson(String str) => BasketDelete.fromJson(json.decode(str));

String basketDeleteToJson(BasketDelete data) => json.encode(data.toJson());

@freezed
class BasketDelete with _$BasketDelete {
    const factory BasketDelete({
        required bool status,
        required Message message,
    }) = _BasketDelete;

    factory BasketDelete.fromJson(Map<String, dynamic> json) => _$BasketDeleteFromJson(json);
}

@freezed
class Message with _$Message {
    const factory Message({
        required List<ProdId> prod_id,
    }) = _Message;

    factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
}

@freezed
class ProdId with _$ProdId {
    const factory ProdId({
        required int id,
    }) = _ProdId;

    factory ProdId.fromJson(Map<String, dynamic> json) => _$ProdIdFromJson(json);
}
