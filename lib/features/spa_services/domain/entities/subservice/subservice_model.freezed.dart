// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subservice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubserviceModel _$SubserviceModelFromJson(Map<String, dynamic> json) {
  return _SubserviceModel.fromJson(json);
}

/// @nodoc
mixin _$SubserviceModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  List<SubservicePriceModel> get prices => throw _privateConstructorUsedError;
  ServiceType get serviceType => throw _privateConstructorUsedError;
  List<String> get descriptions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubserviceModelCopyWith<SubserviceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubserviceModelCopyWith<$Res> {
  factory $SubserviceModelCopyWith(
          SubserviceModel value, $Res Function(SubserviceModel) then) =
      _$SubserviceModelCopyWithImpl<$Res, SubserviceModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String imageUrl,
      List<SubservicePriceModel> prices,
      ServiceType serviceType,
      List<String> descriptions});
}

/// @nodoc
class _$SubserviceModelCopyWithImpl<$Res, $Val extends SubserviceModel>
    implements $SubserviceModelCopyWith<$Res> {
  _$SubserviceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageUrl = null,
    Object? prices = null,
    Object? serviceType = null,
    Object? descriptions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      prices: null == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<SubservicePriceModel>,
      serviceType: null == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as ServiceType,
      descriptions: null == descriptions
          ? _value.descriptions
          : descriptions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubserviceModelImplCopyWith<$Res>
    implements $SubserviceModelCopyWith<$Res> {
  factory _$$SubserviceModelImplCopyWith(_$SubserviceModelImpl value,
          $Res Function(_$SubserviceModelImpl) then) =
      __$$SubserviceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String imageUrl,
      List<SubservicePriceModel> prices,
      ServiceType serviceType,
      List<String> descriptions});
}

/// @nodoc
class __$$SubserviceModelImplCopyWithImpl<$Res>
    extends _$SubserviceModelCopyWithImpl<$Res, _$SubserviceModelImpl>
    implements _$$SubserviceModelImplCopyWith<$Res> {
  __$$SubserviceModelImplCopyWithImpl(
      _$SubserviceModelImpl _value, $Res Function(_$SubserviceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageUrl = null,
    Object? prices = null,
    Object? serviceType = null,
    Object? descriptions = null,
  }) {
    return _then(_$SubserviceModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      prices: null == prices
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<SubservicePriceModel>,
      serviceType: null == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as ServiceType,
      descriptions: null == descriptions
          ? _value._descriptions
          : descriptions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubserviceModelImpl implements _SubserviceModel {
  const _$SubserviceModelImpl(
      {this.id = 0,
      this.title = "",
      this.imageUrl = "",
      final List<SubservicePriceModel> prices = const [],
      this.serviceType = ServiceType.bodyCare,
      final List<String> descriptions = const []})
      : _prices = prices,
        _descriptions = descriptions;

  factory _$SubserviceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubserviceModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String imageUrl;
  final List<SubservicePriceModel> _prices;
  @override
  @JsonKey()
  List<SubservicePriceModel> get prices {
    if (_prices is EqualUnmodifiableListView) return _prices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prices);
  }

  @override
  @JsonKey()
  final ServiceType serviceType;
  final List<String> _descriptions;
  @override
  @JsonKey()
  List<String> get descriptions {
    if (_descriptions is EqualUnmodifiableListView) return _descriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_descriptions);
  }

  @override
  String toString() {
    return 'SubserviceModel(id: $id, title: $title, imageUrl: $imageUrl, prices: $prices, serviceType: $serviceType, descriptions: $descriptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubserviceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._prices, _prices) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            const DeepCollectionEquality()
                .equals(other._descriptions, _descriptions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      imageUrl,
      const DeepCollectionEquality().hash(_prices),
      serviceType,
      const DeepCollectionEquality().hash(_descriptions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubserviceModelImplCopyWith<_$SubserviceModelImpl> get copyWith =>
      __$$SubserviceModelImplCopyWithImpl<_$SubserviceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubserviceModelImplToJson(
      this,
    );
  }
}

abstract class _SubserviceModel implements SubserviceModel {
  const factory _SubserviceModel(
      {final int id,
      final String title,
      final String imageUrl,
      final List<SubservicePriceModel> prices,
      final ServiceType serviceType,
      final List<String> descriptions}) = _$SubserviceModelImpl;

  factory _SubserviceModel.fromJson(Map<String, dynamic> json) =
      _$SubserviceModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get imageUrl;
  @override
  List<SubservicePriceModel> get prices;
  @override
  ServiceType get serviceType;
  @override
  List<String> get descriptions;
  @override
  @JsonKey(ignore: true)
  _$$SubserviceModelImplCopyWith<_$SubserviceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
