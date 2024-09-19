// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ratio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Ratio _$RatioFromJson(Map<String, dynamic> json) {
  return _Ratio.fromJson(json);
}

/// @nodoc
mixin _$Ratio {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [numerator] The value of the numerator.
  Quantity? get numerator => throw _privateConstructorUsedError;

  /// [denominator] The value of the denominator.
  Quantity? get denominator => throw _privateConstructorUsedError;

  /// Serializes this Ratio to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ratio
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RatioCopyWith<Ratio> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatioCopyWith<$Res> {
  factory $RatioCopyWith(Ratio value, $Res Function(Ratio) then) =
      _$RatioCopyWithImpl<$Res, Ratio>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      Quantity? numerator,
      Quantity? denominator});

  $QuantityCopyWith<$Res>? get numerator;
  $QuantityCopyWith<$Res>? get denominator;
}

/// @nodoc
class _$RatioCopyWithImpl<$Res, $Val extends Ratio>
    implements $RatioCopyWith<$Res> {
  _$RatioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ratio
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? numerator = freezed,
    Object? denominator = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      numerator: freezed == numerator
          ? _value.numerator
          : numerator // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      denominator: freezed == denominator
          ? _value.denominator
          : denominator // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ) as $Val);
  }

  /// Create a copy of Ratio
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get numerator {
    if (_value.numerator == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.numerator!, (value) {
      return _then(_value.copyWith(numerator: value) as $Val);
    });
  }

  /// Create a copy of Ratio
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get denominator {
    if (_value.denominator == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.denominator!, (value) {
      return _then(_value.copyWith(denominator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RatioImplCopyWith<$Res> implements $RatioCopyWith<$Res> {
  factory _$$RatioImplCopyWith(
          _$RatioImpl value, $Res Function(_$RatioImpl) then) =
      __$$RatioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      Quantity? numerator,
      Quantity? denominator});

  @override
  $QuantityCopyWith<$Res>? get numerator;
  @override
  $QuantityCopyWith<$Res>? get denominator;
}

/// @nodoc
class __$$RatioImplCopyWithImpl<$Res>
    extends _$RatioCopyWithImpl<$Res, _$RatioImpl>
    implements _$$RatioImplCopyWith<$Res> {
  __$$RatioImplCopyWithImpl(
      _$RatioImpl _value, $Res Function(_$RatioImpl) _then)
      : super(_value, _then);

  /// Create a copy of Ratio
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? numerator = freezed,
    Object? denominator = freezed,
  }) {
    return _then(_$RatioImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      numerator: freezed == numerator
          ? _value.numerator
          : numerator // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      denominator: freezed == denominator
          ? _value.denominator
          : denominator // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatioImpl extends _Ratio {
  _$RatioImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      this.numerator,
      this.denominator})
      : _extension_ = extension_,
        super._();

  factory _$RatioImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatioImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [numerator] The value of the numerator.
  @override
  final Quantity? numerator;

  /// [denominator] The value of the denominator.
  @override
  final Quantity? denominator;

  @override
  String toString() {
    return 'Ratio(id: $id, extension_: $extension_, numerator: $numerator, denominator: $denominator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatioImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.numerator, numerator) ||
                other.numerator == numerator) &&
            (identical(other.denominator, denominator) ||
                other.denominator == denominator));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_extension_), numerator, denominator);

  /// Create a copy of Ratio
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RatioImplCopyWith<_$RatioImpl> get copyWith =>
      __$$RatioImplCopyWithImpl<_$RatioImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatioImplToJson(
      this,
    );
  }
}

abstract class _Ratio extends Ratio {
  factory _Ratio(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final Quantity? numerator,
      final Quantity? denominator}) = _$RatioImpl;
  _Ratio._() : super._();

  factory _Ratio.fromJson(Map<String, dynamic> json) = _$RatioImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [numerator] The value of the numerator.
  @override
  Quantity? get numerator;

  /// [denominator] The value of the denominator.
  @override
  Quantity? get denominator;

  /// Create a copy of Ratio
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RatioImplCopyWith<_$RatioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
