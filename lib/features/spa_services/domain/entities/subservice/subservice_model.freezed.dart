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
  String get title => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  int get price =>
      throw _privateConstructorUsedError; // создать объект прайса и таблицы для базы цен и описаний
  ServiceType get serviceType => throw _privateConstructorUsedError;
  List<String> get description => throw _privateConstructorUsedError;

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
      {String title,
      String imageUrl,
      int price,
      ServiceType serviceType,
      List<String> description});
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
    Object? title = null,
    Object? imageUrl = null,
    Object? price = null,
    Object? serviceType = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      serviceType: null == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as ServiceType,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
      {String title,
      String imageUrl,
      int price,
      ServiceType serviceType,
      List<String> description});
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
    Object? title = null,
    Object? imageUrl = null,
    Object? price = null,
    Object? serviceType = null,
    Object? description = null,
  }) {
    return _then(_$SubserviceModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      serviceType: null == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as ServiceType,
      description: null == description
          ? _value._description
          : description // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubserviceModelImpl implements _SubserviceModel {
  _$SubserviceModelImpl(
      {this.title = "",
      this.imageUrl = "",
      this.price = 0,
      this.serviceType = ServiceType.bodyCare,
      final List<String> description = const []})
      : _description = description;

  factory _$SubserviceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubserviceModelImplFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String imageUrl;
  @override
  @JsonKey()
  final int price;
// создать объект прайса и таблицы для базы цен и описаний
  @override
  @JsonKey()
  final ServiceType serviceType;
  final List<String> _description;
  @override
  @JsonKey()
  List<String> get description {
    if (_description is EqualUnmodifiableListView) return _description;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_description);
  }

  @override
  String toString() {
    return 'SubserviceModel(title: $title, imageUrl: $imageUrl, price: $price, serviceType: $serviceType, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubserviceModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            const DeepCollectionEquality()
                .equals(other._description, _description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, imageUrl, price,
      serviceType, const DeepCollectionEquality().hash(_description));

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
  factory _SubserviceModel(
      {final String title,
      final String imageUrl,
      final int price,
      final ServiceType serviceType,
      final List<String> description}) = _$SubserviceModelImpl;

  factory _SubserviceModel.fromJson(Map<String, dynamic> json) =
      _$SubserviceModelImpl.fromJson;

  @override
  String get title;
  @override
  String get imageUrl;
  @override
  int get price;
  @override // создать объект прайса и таблицы для базы цен и описаний
  ServiceType get serviceType;
  @override
  List<String> get description;
  @override
  @JsonKey(ignore: true)
  _$$SubserviceModelImplCopyWith<_$SubserviceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
