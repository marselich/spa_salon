import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spa_salon/core/utils/enums/service_type.dart';
import 'package:spa_salon/features/spa_services/domain/entities/subservice_price/subservice_price_model.dart';

part 'subservice_model.freezed.dart';
part 'subservice_model.g.dart';

@freezed
class SubserviceModel with _$SubserviceModel {
  // const SubserviceModel._();
  const factory SubserviceModel({
    @Default(0) int id,
    @Default("") String title,
    @Default("") String imageUrl,
    @Default([]) List<SubservicePriceModel> prices,
    @Default(ServiceType.bodyCare) ServiceType serviceType,
    @Default([]) List<String> descriptions,
  }) = _SubserviceModel;

  factory SubserviceModel.fromJson(Map<String, dynamic> json) =>
      _$SubserviceModelFromJson(json);

  // factory SubserviceModel.fromDatabaseRow(Map<String, Object?> json) {
  //   return SubserviceModel(
  //     id: json["sub_service_id"] as int,
  //     title: json["title"] as String,
  //     imageUrl: json["image_url"] as String,
  //     serviceType: ServiceType.values[json["service_type"] as int],
  //   );
  // }
}
