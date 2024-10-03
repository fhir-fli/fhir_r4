// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TempClass _$TempClassFromJson(Map<String, dynamic> json) {
  return _TempClass.fromJson(json);
}

/// @nodoc
mixin _$TempClass {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this TempClass to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TempClass
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TempClassCopyWith<TempClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempClassCopyWith<$Res> {
  factory $TempClassCopyWith(TempClass value, $Res Function(TempClass) then) =
      _$TempClassCopyWithImpl<$Res, TempClass>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$TempClassCopyWithImpl<$Res, $Val extends TempClass>
    implements $TempClassCopyWith<$Res> {
  _$TempClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TempClass
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TempClassImplCopyWith<$Res>
    implements $TempClassCopyWith<$Res> {
  factory _$$TempClassImplCopyWith(
          _$TempClassImpl value, $Res Function(_$TempClassImpl) then) =
      __$$TempClassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$TempClassImplCopyWithImpl<$Res>
    extends _$TempClassCopyWithImpl<$Res, _$TempClassImpl>
    implements _$$TempClassImplCopyWith<$Res> {
  __$$TempClassImplCopyWithImpl(
      _$TempClassImpl _value, $Res Function(_$TempClassImpl) _then)
      : super(_value, _then);

  /// Create a copy of TempClass
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$TempClassImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TempClassImpl extends _TempClass {
  _$TempClassImpl({this.id, this.name}) : super._();

  factory _$TempClassImpl.fromJson(Map<String, dynamic> json) =>
      _$$TempClassImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'TempClass(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TempClassImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of TempClass
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TempClassImplCopyWith<_$TempClassImpl> get copyWith =>
      __$$TempClassImplCopyWithImpl<_$TempClassImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TempClassImplToJson(
      this,
    );
  }
}

abstract class _TempClass extends TempClass {
  factory _TempClass({final int? id, final String? name}) = _$TempClassImpl;
  _TempClass._() : super._();

  factory _TempClass.fromJson(Map<String, dynamic> json) =
      _$TempClassImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;

  /// Create a copy of TempClass
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TempClassImplCopyWith<_$TempClassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
