// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ratio_range.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RatioRange _$RatioRangeFromJson(Map<String, dynamic> json) {
  return _RatioRange.fromJson(json);
}

/// @nodoc
mixin _$RatioRange {
  /// [id] "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces."
  String? get id => throw _privateConstructorUsedError;

  /// [extension] "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [lowNumerator] "The value of the low limit numerator."
  Quantity? get lowNumerator => throw _privateConstructorUsedError;

  /// [highNumerator] "The value of the high limit numerator."
  Quantity? get highNumerator => throw _privateConstructorUsedError;

  /// [denominator] "The value of the denominator."
  Quantity? get denominator => throw _privateConstructorUsedError;

  /// Serializes this RatioRange to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RatioRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RatioRangeCopyWith<RatioRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatioRangeCopyWith<$Res> {
  factory $RatioRangeCopyWith(
          RatioRange value, $Res Function(RatioRange) then) =
      _$RatioRangeCopyWithImpl<$Res, RatioRange>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      Quantity? lowNumerator,
      Quantity? highNumerator,
      Quantity? denominator});

  $QuantityCopyWith<$Res>? get lowNumerator;
  $QuantityCopyWith<$Res>? get highNumerator;
  $QuantityCopyWith<$Res>? get denominator;
}

/// @nodoc
class _$RatioRangeCopyWithImpl<$Res, $Val extends RatioRange>
    implements $RatioRangeCopyWith<$Res> {
  _$RatioRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RatioRange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? lowNumerator = freezed,
    Object? highNumerator = freezed,
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
      lowNumerator: freezed == lowNumerator
          ? _value.lowNumerator
          : lowNumerator // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      highNumerator: freezed == highNumerator
          ? _value.highNumerator
          : highNumerator // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      denominator: freezed == denominator
          ? _value.denominator
          : denominator // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ) as $Val);
  }

  /// Create a copy of RatioRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get lowNumerator {
    if (_value.lowNumerator == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.lowNumerator!, (value) {
      return _then(_value.copyWith(lowNumerator: value) as $Val);
    });
  }

  /// Create a copy of RatioRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get highNumerator {
    if (_value.highNumerator == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.highNumerator!, (value) {
      return _then(_value.copyWith(highNumerator: value) as $Val);
    });
  }

  /// Create a copy of RatioRange
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
abstract class _$$RatioRangeImplCopyWith<$Res>
    implements $RatioRangeCopyWith<$Res> {
  factory _$$RatioRangeImplCopyWith(
          _$RatioRangeImpl value, $Res Function(_$RatioRangeImpl) then) =
      __$$RatioRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      Quantity? lowNumerator,
      Quantity? highNumerator,
      Quantity? denominator});

  @override
  $QuantityCopyWith<$Res>? get lowNumerator;
  @override
  $QuantityCopyWith<$Res>? get highNumerator;
  @override
  $QuantityCopyWith<$Res>? get denominator;
}

/// @nodoc
class __$$RatioRangeImplCopyWithImpl<$Res>
    extends _$RatioRangeCopyWithImpl<$Res, _$RatioRangeImpl>
    implements _$$RatioRangeImplCopyWith<$Res> {
  __$$RatioRangeImplCopyWithImpl(
      _$RatioRangeImpl _value, $Res Function(_$RatioRangeImpl) _then)
      : super(_value, _then);

  /// Create a copy of RatioRange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? lowNumerator = freezed,
    Object? highNumerator = freezed,
    Object? denominator = freezed,
  }) {
    return _then(_$RatioRangeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      lowNumerator: freezed == lowNumerator
          ? _value.lowNumerator
          : lowNumerator // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      highNumerator: freezed == highNumerator
          ? _value.highNumerator
          : highNumerator // ignore: cast_nullable_to_non_nullable
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
class _$RatioRangeImpl extends _RatioRange {
  const _$RatioRangeImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      this.lowNumerator,
      this.highNumerator,
      this.denominator})
      : _extension_ = extension_,
        super._();

  factory _$RatioRangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatioRangeImplFromJson(json);

  /// [id] "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces."
  @override
  final String? id;

  /// [extension] "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
  final List<FhirExtension>? _extension_;

  /// [extension] "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [lowNumerator] "The value of the low limit numerator."
  @override
  final Quantity? lowNumerator;

  /// [highNumerator] "The value of the high limit numerator."
  @override
  final Quantity? highNumerator;

  /// [denominator] "The value of the denominator."
  @override
  final Quantity? denominator;

  @override
  String toString() {
    return 'RatioRange(id: $id, extension_: $extension_, lowNumerator: $lowNumerator, highNumerator: $highNumerator, denominator: $denominator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatioRangeImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.lowNumerator, lowNumerator) ||
                other.lowNumerator == lowNumerator) &&
            (identical(other.highNumerator, highNumerator) ||
                other.highNumerator == highNumerator) &&
            (identical(other.denominator, denominator) ||
                other.denominator == denominator));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      lowNumerator,
      highNumerator,
      denominator);

  /// Create a copy of RatioRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RatioRangeImplCopyWith<_$RatioRangeImpl> get copyWith =>
      __$$RatioRangeImplCopyWithImpl<_$RatioRangeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatioRangeImplToJson(
      this,
    );
  }
}

abstract class _RatioRange extends RatioRange {
  const factory _RatioRange(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final Quantity? lowNumerator,
      final Quantity? highNumerator,
      final Quantity? denominator}) = _$RatioRangeImpl;
  const _RatioRange._() : super._();

  factory _RatioRange.fromJson(Map<String, dynamic> json) =
      _$RatioRangeImpl.fromJson;

  /// [id] "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces."
  @override
  String? get id;

  /// [extension] "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [lowNumerator] "The value of the low limit numerator."
  @override
  Quantity? get lowNumerator;

  /// [highNumerator] "The value of the high limit numerator."
  @override
  Quantity? get highNumerator;

  /// [denominator] "The value of the denominator."
  @override
  Quantity? get denominator;

  /// Create a copy of RatioRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RatioRangeImplCopyWith<_$RatioRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
