// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subservice_price_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubservicePriceModel _$SubservicePriceModelFromJson(Map<String, dynamic> json) {
  return _SubservicePriceModel.fromJson(json);
}

/// @nodoc
mixin _$SubservicePriceModel {
  String get timePeriod => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubservicePriceModelCopyWith<SubservicePriceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubservicePriceModelCopyWith<$Res> {
  factory $SubservicePriceModelCopyWith(SubservicePriceModel value,
          $Res Function(SubservicePriceModel) then) =
      _$SubservicePriceModelCopyWithImpl<$Res, SubservicePriceModel>;
  @useResult
  $Res call({String timePeriod, double price});
}

/// @nodoc
class _$SubservicePriceModelCopyWithImpl<$Res,
        $Val extends SubservicePriceModel>
    implements $SubservicePriceModelCopyWith<$Res> {
  _$SubservicePriceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timePeriod = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      timePeriod: null == timePeriod
          ? _value.timePeriod
          : timePeriod // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubservicePriceModelImplCopyWith<$Res>
    implements $SubservicePriceModelCopyWith<$Res> {
  factory _$$SubservicePriceModelImplCopyWith(_$SubservicePriceModelImpl value,
          $Res Function(_$SubservicePriceModelImpl) then) =
      __$$SubservicePriceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String timePeriod, double price});
}

/// @nodoc
class __$$SubservicePriceModelImplCopyWithImpl<$Res>
    extends _$SubservicePriceModelCopyWithImpl<$Res, _$SubservicePriceModelImpl>
    implements _$$SubservicePriceModelImplCopyWith<$Res> {
  __$$SubservicePriceModelImplCopyWithImpl(_$SubservicePriceModelImpl _value,
      $Res Function(_$SubservicePriceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timePeriod = null,
    Object? price = null,
  }) {
    return _then(_$SubservicePriceModelImpl(
      timePeriod: null == timePeriod
          ? _value.timePeriod
          : timePeriod // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubservicePriceModelImpl extends _SubservicePriceModel {
  _$SubservicePriceModelImpl({this.timePeriod = "", this.price = 0})
      : super._();

  factory _$SubservicePriceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubservicePriceModelImplFromJson(json);

  @override
  @JsonKey()
  final String timePeriod;
  @override
  @JsonKey()
  final double price;

  @override
  String toString() {
    return 'SubservicePriceModel(timePeriod: $timePeriod, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubservicePriceModelImpl &&
            (identical(other.timePeriod, timePeriod) ||
                other.timePeriod == timePeriod) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, timePeriod, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubservicePriceModelImplCopyWith<_$SubservicePriceModelImpl>
      get copyWith =>
          __$$SubservicePriceModelImplCopyWithImpl<_$SubservicePriceModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubservicePriceModelImplToJson(
      this,
    );
  }
}

abstract class _SubservicePriceModel extends SubservicePriceModel {
  factory _SubservicePriceModel({final String timePeriod, final double price}) =
      _$SubservicePriceModelImpl;
  _SubservicePriceModel._() : super._();

  factory _SubservicePriceModel.fromJson(Map<String, dynamic> json) =
      _$SubservicePriceModelImpl.fromJson;

  @override
  String get timePeriod;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$SubservicePriceModelImplCopyWith<_$SubservicePriceModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
