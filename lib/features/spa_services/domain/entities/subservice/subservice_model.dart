import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spa_salon/core/utils/enums/service_type.dart';

part 'subservice_model.freezed.dart';
part 'subservice_model.g.dart';

@freezed
class SubserviceModel with _$SubserviceModel {
  factory SubserviceModel({
    @Default("") String title,
    @Default("") String imageUrl,
    @Default(0) int price,
    // создать объект прайса и таблицы для базы цен и описаний
    @Default(ServiceType.bodyCare) ServiceType serviceType,
    @Default([]) List<String> description,
  }) = _SubserviceModel;

  factory SubserviceModel.fromJson(Map<String, dynamic> json) =>
      _$SubserviceModelFromJson(json);
}
