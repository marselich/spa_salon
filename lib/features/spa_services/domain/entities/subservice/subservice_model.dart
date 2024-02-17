import 'package:freezed_annotation/freezed_annotation.dart';

part 'subservice_model.freezed.dart';
part 'subservice_model.g.dart';

@freezed
class SubserviceModel with _$SubserviceModel {
  factory SubserviceModel({
    @Default("") String id,
    @Default("") String title,
    @Default("") String image,
    @Default(0) double price,
  }) = _SubserviceModel;

  factory SubserviceModel.fromJson(Map<String, dynamic> json) =>
      _$SubserviceModelFromJson(json);
}
