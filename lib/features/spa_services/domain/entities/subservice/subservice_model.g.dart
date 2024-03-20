// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subservice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubserviceModelImpl _$$SubserviceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubserviceModelImpl(
      title: json['title'] as String? ?? "",
      imageUrl: json['imageUrl'] as String? ?? "",
      price: json['price'] as int? ?? 0,
      serviceType:
          $enumDecodeNullable(_$ServiceTypeEnumMap, json['serviceType']) ??
              ServiceType.bodyCare,
      description: (json['description'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SubserviceModelImplToJson(
        _$SubserviceModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'price': instance.price,
      'serviceType': _$ServiceTypeEnumMap[instance.serviceType]!,
      'description': instance.description,
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
