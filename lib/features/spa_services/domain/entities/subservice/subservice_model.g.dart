// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subservice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubserviceModelImpl _$$SubserviceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubserviceModelImpl(
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? "",
      imageUrl: json['imageUrl'] as String? ?? "",
      prices: (json['prices'] as List<dynamic>?)
              ?.map((e) =>
                  SubservicePriceModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      serviceType:
          $enumDecodeNullable(_$ServiceTypeEnumMap, json['serviceType']) ??
              ServiceType.bodyCare,
      descriptions: (json['descriptions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SubserviceModelImplToJson(
        _$SubserviceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'prices': instance.prices,
      'serviceType': _$ServiceTypeEnumMap[instance.serviceType]!,
      'descriptions': instance.descriptions,
    };

const _$ServiceTypeEnumMap = {
  ServiceType.facialMassage: 'facialMassage',
  ServiceType.facialCare: 'facialCare',
  ServiceType.bodyMassage: 'bodyMassage',
  ServiceType.bodyCare: 'bodyCare',
  ServiceType.massageComplex: 'massageComplex',
  ServiceType.spaPrograms: 'spaPrograms',
  ServiceType.femaleDepilation: 'femaleDepilation',
  ServiceType.maleDepilation: 'maleDepilation',
};
