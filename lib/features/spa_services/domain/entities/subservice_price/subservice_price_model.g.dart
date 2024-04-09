// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subservice_price_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubservicePriceModelImpl _$$SubservicePriceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubservicePriceModelImpl(
      timePeriod: json['timePeriod'] as String? ?? "",
      price: (json['price'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$SubservicePriceModelImplToJson(
        _$SubservicePriceModelImpl instance) =>
    <String, dynamic>{
      'timePeriod': instance.timePeriod,
      'price': instance.price,
    };
