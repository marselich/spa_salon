import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spa_salon/core/utils/enums/service_type.dart';

part 'service_model.freezed.dart';
part 'service_model.g.dart';

@freezed
class ServiceModel with _$ServiceModel {
  const ServiceModel._();
  const factory ServiceModel({
    @Default("") String title,
    @Default("") String image,
    @Default(ServiceType.bodyCare) ServiceType serviceType,
  }) = _ServiceModel;

  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);

  factory ServiceModel.fromDatabaseRow(Map<String, Object?> json) {
    return ServiceModel(
      title: json["title"] as String,
      image: json["image_url"] as String,
      serviceType: ServiceType.values[json["service_id"] as int],
    );
  }
}
