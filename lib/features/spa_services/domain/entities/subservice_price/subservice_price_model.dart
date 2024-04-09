import 'package:freezed_annotation/freezed_annotation.dart';

part 'subservice_price_model.freezed.dart';
part 'subservice_price_model.g.dart';

@freezed
class SubservicePriceModel with _$SubservicePriceModel {
  const SubservicePriceModel._();
  factory SubservicePriceModel({
    @Default("") String timePeriod,
    @Default(0) double price,
  }) = _SubservicePriceModel;

  factory SubservicePriceModel.fromJson(Map<String, dynamic> json) =>
      _$SubservicePriceModelFromJson(json);

  factory SubservicePriceModel.fromDatabaseRow(Map<String, Object?> json) {
    return SubservicePriceModel(
      timePeriod: json["time_period"] as String,
      price: json["amount"] as double,
    );
  }
}
