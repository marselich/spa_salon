// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartItemModelImpl _$$CartItemModelImplFromJson(Map<String, dynamic> json) =>
    _$CartItemModelImpl(
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? "",
      imageUrl: json['imageUrl'] as String? ?? "",
      priceTime: json['priceTime'] as String? ?? "",
      count: json['count'] as int? ?? 0,
      type: $enumDecodeNullable(_$CartItemTypeEnumMap, json['type']) ??
          CartItemType.service,
    );

Map<String, dynamic> _$$CartItemModelImplToJson(_$CartItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'priceTime': instance.priceTime,
      'count': instance.count,
      'type': _$CartItemTypeEnumMap[instance.type]!,
    };

const _$CartItemTypeEnumMap = {
  CartItemType.service: 'service',
  CartItemType.product: 'product',
};
