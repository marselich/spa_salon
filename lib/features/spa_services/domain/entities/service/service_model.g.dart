// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceModelImpl _$$ServiceModelImplFromJson(Map<String, dynamic> json) =>
    _$ServiceModelImpl(
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? "",
      image: json['image'] as String? ?? "",
      serviceType:
          $enumDecodeNullable(_$ServiceTypeEnumMap, json['serviceType']) ??
              ServiceType.bodyCare,
    );

Map<String, dynamic> _$$ServiceModelImplToJson(_$ServiceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'serviceType': _$ServiceTypeEnumMap[instance.serviceType]!,
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
