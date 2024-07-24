// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'human_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HumanName _$HumanNameFromJson(Map<String, dynamic> json) {
  return _HumanName.fromJson(json);
}

/// @nodoc
mixin _$HumanName {
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

  /// [use] Identifies the purpose for this name.
  @JsonKey(unknownEnumValue: HumanNameUse.unknown)
  HumanNameUse? get use => throw _privateConstructorUsedError;

  /// [useElement] Extensions for use
  @JsonKey(name: '_use')
  PrimitiveElement? get useElement => throw _privateConstructorUsedError;

  /// [text] Specifies the entire name as it should be displayed e.g. on an
  /// application UI. This may be provided instead of or as well as the specific
  ///  parts.
  String? get text => throw _privateConstructorUsedError;

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement => throw _privateConstructorUsedError;

  /// [family] The part of a name that links to the genealogy. In some cultures
  ///  (e.g. Eritrea) the family name of a son is the first name of his father.
  String? get family => throw _privateConstructorUsedError;

  /// [familyElement] Extensions for family
  @JsonKey(name: '_family')
  PrimitiveElement? get familyElement => throw _privateConstructorUsedError;

  /// [given] Given name.
  List<String>? get given => throw _privateConstructorUsedError;

  /// [givenElement] Extensions for given
  @JsonKey(name: '_given')
  List<PrimitiveElement>? get givenElement =>
      throw _privateConstructorUsedError;

  /// [prefix] Part of the name that is acquired as a title due to academic,
  /// legal, employment or nobility status, etc. and that appears at the start
  ///  of the name.
  List<String>? get prefix => throw _privateConstructorUsedError;

  /// [prefixElement] Extensions for prefix
  @JsonKey(name: '_prefix')
  List<PrimitiveElement>? get prefixElement =>
      throw _privateConstructorUsedError;

  /// [suffix] Part of the name that is acquired as a title due to academic,
  /// legal, employment or nobility status, etc. and that appears at the end of
  ///  the name.
  List<String>? get suffix => throw _privateConstructorUsedError;

  /// [suffixElement] Extensions for suffix
  @JsonKey(name: '_suffix')
  List<PrimitiveElement>? get suffixElement =>
      throw _privateConstructorUsedError;

  /// [period] Indicates the period of time when this name was valid for the
  ///  named person.
  Period? get period => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HumanNameCopyWith<HumanName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HumanNameCopyWith<$Res> {
  factory $HumanNameCopyWith(HumanName value, $Res Function(HumanName) then) =
      _$HumanNameCopyWithImpl<$Res, HumanName>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: HumanNameUse.unknown) HumanNameUse? use,
      @JsonKey(name: '_use') PrimitiveElement? useElement,
      String? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement,
      String? family,
      @JsonKey(name: '_family') PrimitiveElement? familyElement,
      List<String>? given,
      @JsonKey(name: '_given') List<PrimitiveElement>? givenElement,
      List<String>? prefix,
      @JsonKey(name: '_prefix') List<PrimitiveElement>? prefixElement,
      List<String>? suffix,
      @JsonKey(name: '_suffix') List<PrimitiveElement>? suffixElement,
      Period? period});

  $PeriodCopyWith<$Res>? get period;
}

/// @nodoc
class _$HumanNameCopyWithImpl<$Res, $Val extends HumanName>
    implements $HumanNameCopyWith<$Res> {
  _$HumanNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? use = freezed,
    Object? useElement = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
    Object? family = freezed,
    Object? familyElement = freezed,
    Object? given = freezed,
    Object? givenElement = freezed,
    Object? prefix = freezed,
    Object? prefixElement = freezed,
    Object? suffix = freezed,
    Object? suffixElement = freezed,
    Object? period = freezed,
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
      use: freezed == use
          ? _value.use
          : use // ignore: cast_nullable_to_non_nullable
              as HumanNameUse?,
      useElement: freezed == useElement
          ? _value.useElement
          : useElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      family: freezed == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String?,
      familyElement: freezed == familyElement
          ? _value.familyElement
          : familyElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      given: freezed == given
          ? _value.given
          : given // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      givenElement: freezed == givenElement
          ? _value.givenElement
          : givenElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      prefixElement: freezed == prefixElement
          ? _value.prefixElement
          : prefixElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      suffixElement: freezed == suffixElement
          ? _value.suffixElement
          : suffixElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get period {
    if (_value.period == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.period!, (value) {
      return _then(_value.copyWith(period: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HumanNameImplCopyWith<$Res>
    implements $HumanNameCopyWith<$Res> {
  factory _$$HumanNameImplCopyWith(
          _$HumanNameImpl value, $Res Function(_$HumanNameImpl) then) =
      __$$HumanNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: HumanNameUse.unknown) HumanNameUse? use,
      @JsonKey(name: '_use') PrimitiveElement? useElement,
      String? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement,
      String? family,
      @JsonKey(name: '_family') PrimitiveElement? familyElement,
      List<String>? given,
      @JsonKey(name: '_given') List<PrimitiveElement>? givenElement,
      List<String>? prefix,
      @JsonKey(name: '_prefix') List<PrimitiveElement>? prefixElement,
      List<String>? suffix,
      @JsonKey(name: '_suffix') List<PrimitiveElement>? suffixElement,
      Period? period});

  @override
  $PeriodCopyWith<$Res>? get period;
}

/// @nodoc
class __$$HumanNameImplCopyWithImpl<$Res>
    extends _$HumanNameCopyWithImpl<$Res, _$HumanNameImpl>
    implements _$$HumanNameImplCopyWith<$Res> {
  __$$HumanNameImplCopyWithImpl(
      _$HumanNameImpl _value, $Res Function(_$HumanNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? use = freezed,
    Object? useElement = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
    Object? family = freezed,
    Object? familyElement = freezed,
    Object? given = freezed,
    Object? givenElement = freezed,
    Object? prefix = freezed,
    Object? prefixElement = freezed,
    Object? suffix = freezed,
    Object? suffixElement = freezed,
    Object? period = freezed,
  }) {
    return _then(_$HumanNameImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      use: freezed == use
          ? _value.use
          : use // ignore: cast_nullable_to_non_nullable
              as HumanNameUse?,
      useElement: freezed == useElement
          ? _value.useElement
          : useElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      family: freezed == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String?,
      familyElement: freezed == familyElement
          ? _value.familyElement
          : familyElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      given: freezed == given
          ? _value._given
          : given // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      givenElement: freezed == givenElement
          ? _value._givenElement
          : givenElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      prefix: freezed == prefix
          ? _value._prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      prefixElement: freezed == prefixElement
          ? _value._prefixElement
          : prefixElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      suffix: freezed == suffix
          ? _value._suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      suffixElement: freezed == suffixElement
          ? _value._suffixElement
          : suffixElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HumanNameImpl extends _HumanName {
  const _$HumanNameImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: HumanNameUse.unknown) this.use,
      @JsonKey(name: '_use') this.useElement,
      this.text,
      @JsonKey(name: '_text') this.textElement,
      this.family,
      @JsonKey(name: '_family') this.familyElement,
      final List<String>? given,
      @JsonKey(name: '_given') final List<PrimitiveElement>? givenElement,
      final List<String>? prefix,
      @JsonKey(name: '_prefix') final List<PrimitiveElement>? prefixElement,
      final List<String>? suffix,
      @JsonKey(name: '_suffix') final List<PrimitiveElement>? suffixElement,
      this.period})
      : _extension_ = extension_,
        _given = given,
        _givenElement = givenElement,
        _prefix = prefix,
        _prefixElement = prefixElement,
        _suffix = suffix,
        _suffixElement = suffixElement,
        super._();

  factory _$HumanNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$HumanNameImplFromJson(json);

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

  /// [use] Identifies the purpose for this name.
  @override
  @JsonKey(unknownEnumValue: HumanNameUse.unknown)
  final HumanNameUse? use;

  /// [useElement] Extensions for use
  @override
  @JsonKey(name: '_use')
  final PrimitiveElement? useElement;

  /// [text] Specifies the entire name as it should be displayed e.g. on an
  /// application UI. This may be provided instead of or as well as the specific
  ///  parts.
  @override
  final String? text;

  /// [textElement] Extensions for text
  @override
  @JsonKey(name: '_text')
  final PrimitiveElement? textElement;

  /// [family] The part of a name that links to the genealogy. In some cultures
  ///  (e.g. Eritrea) the family name of a son is the first name of his father.
  @override
  final String? family;

  /// [familyElement] Extensions for family
  @override
  @JsonKey(name: '_family')
  final PrimitiveElement? familyElement;

  /// [given] Given name.
  final List<String>? _given;

  /// [given] Given name.
  @override
  List<String>? get given {
    final value = _given;
    if (value == null) return null;
    if (_given is EqualUnmodifiableListView) return _given;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [givenElement] Extensions for given
  final List<PrimitiveElement>? _givenElement;

  /// [givenElement] Extensions for given
  @override
  @JsonKey(name: '_given')
  List<PrimitiveElement>? get givenElement {
    final value = _givenElement;
    if (value == null) return null;
    if (_givenElement is EqualUnmodifiableListView) return _givenElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [prefix] Part of the name that is acquired as a title due to academic,
  /// legal, employment or nobility status, etc. and that appears at the start
  ///  of the name.
  final List<String>? _prefix;

  /// [prefix] Part of the name that is acquired as a title due to academic,
  /// legal, employment or nobility status, etc. and that appears at the start
  ///  of the name.
  @override
  List<String>? get prefix {
    final value = _prefix;
    if (value == null) return null;
    if (_prefix is EqualUnmodifiableListView) return _prefix;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [prefixElement] Extensions for prefix
  final List<PrimitiveElement>? _prefixElement;

  /// [prefixElement] Extensions for prefix
  @override
  @JsonKey(name: '_prefix')
  List<PrimitiveElement>? get prefixElement {
    final value = _prefixElement;
    if (value == null) return null;
    if (_prefixElement is EqualUnmodifiableListView) return _prefixElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [suffix] Part of the name that is acquired as a title due to academic,
  /// legal, employment or nobility status, etc. and that appears at the end of
  ///  the name.
  final List<String>? _suffix;

  /// [suffix] Part of the name that is acquired as a title due to academic,
  /// legal, employment or nobility status, etc. and that appears at the end of
  ///  the name.
  @override
  List<String>? get suffix {
    final value = _suffix;
    if (value == null) return null;
    if (_suffix is EqualUnmodifiableListView) return _suffix;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [suffixElement] Extensions for suffix
  final List<PrimitiveElement>? _suffixElement;

  /// [suffixElement] Extensions for suffix
  @override
  @JsonKey(name: '_suffix')
  List<PrimitiveElement>? get suffixElement {
    final value = _suffixElement;
    if (value == null) return null;
    if (_suffixElement is EqualUnmodifiableListView) return _suffixElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [period] Indicates the period of time when this name was valid for the
  ///  named person.
  @override
  final Period? period;

  @override
  String toString() {
    return 'HumanName(id: $id, extension_: $extension_, use: $use, useElement: $useElement, text: $text, textElement: $textElement, family: $family, familyElement: $familyElement, given: $given, givenElement: $givenElement, prefix: $prefix, prefixElement: $prefixElement, suffix: $suffix, suffixElement: $suffixElement, period: $period)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HumanNameImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.use, use) || other.use == use) &&
            (identical(other.useElement, useElement) ||
                other.useElement == useElement) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.textElement, textElement) ||
                other.textElement == textElement) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.familyElement, familyElement) ||
                other.familyElement == familyElement) &&
            const DeepCollectionEquality().equals(other._given, _given) &&
            const DeepCollectionEquality()
                .equals(other._givenElement, _givenElement) &&
            const DeepCollectionEquality().equals(other._prefix, _prefix) &&
            const DeepCollectionEquality()
                .equals(other._prefixElement, _prefixElement) &&
            const DeepCollectionEquality().equals(other._suffix, _suffix) &&
            const DeepCollectionEquality()
                .equals(other._suffixElement, _suffixElement) &&
            (identical(other.period, period) || other.period == period));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      use,
      useElement,
      text,
      textElement,
      family,
      familyElement,
      const DeepCollectionEquality().hash(_given),
      const DeepCollectionEquality().hash(_givenElement),
      const DeepCollectionEquality().hash(_prefix),
      const DeepCollectionEquality().hash(_prefixElement),
      const DeepCollectionEquality().hash(_suffix),
      const DeepCollectionEquality().hash(_suffixElement),
      period);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HumanNameImplCopyWith<_$HumanNameImpl> get copyWith =>
      __$$HumanNameImplCopyWithImpl<_$HumanNameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HumanNameImplToJson(
      this,
    );
  }
}

abstract class _HumanName extends HumanName {
  const factory _HumanName(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: HumanNameUse.unknown) final HumanNameUse? use,
      @JsonKey(name: '_use') final PrimitiveElement? useElement,
      final String? text,
      @JsonKey(name: '_text') final PrimitiveElement? textElement,
      final String? family,
      @JsonKey(name: '_family') final PrimitiveElement? familyElement,
      final List<String>? given,
      @JsonKey(name: '_given') final List<PrimitiveElement>? givenElement,
      final List<String>? prefix,
      @JsonKey(name: '_prefix') final List<PrimitiveElement>? prefixElement,
      final List<String>? suffix,
      @JsonKey(name: '_suffix') final List<PrimitiveElement>? suffixElement,
      final Period? period}) = _$HumanNameImpl;
  const _HumanName._() : super._();

  factory _HumanName.fromJson(Map<String, dynamic> json) =
      _$HumanNameImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [use] Identifies the purpose for this name.
  @JsonKey(unknownEnumValue: HumanNameUse.unknown)
  HumanNameUse? get use;
  @override

  /// [useElement] Extensions for use
  @JsonKey(name: '_use')
  PrimitiveElement? get useElement;
  @override

  /// [text] Specifies the entire name as it should be displayed e.g. on an
  /// application UI. This may be provided instead of or as well as the specific
  ///  parts.
  String? get text;
  @override

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement;
  @override

  /// [family] The part of a name that links to the genealogy. In some cultures
  ///  (e.g. Eritrea) the family name of a son is the first name of his father.
  String? get family;
  @override

  /// [familyElement] Extensions for family
  @JsonKey(name: '_family')
  PrimitiveElement? get familyElement;
  @override

  /// [given] Given name.
  List<String>? get given;
  @override

  /// [givenElement] Extensions for given
  @JsonKey(name: '_given')
  List<PrimitiveElement>? get givenElement;
  @override

  /// [prefix] Part of the name that is acquired as a title due to academic,
  /// legal, employment or nobility status, etc. and that appears at the start
  ///  of the name.
  List<String>? get prefix;
  @override

  /// [prefixElement] Extensions for prefix
  @JsonKey(name: '_prefix')
  List<PrimitiveElement>? get prefixElement;
  @override

  /// [suffix] Part of the name that is acquired as a title due to academic,
  /// legal, employment or nobility status, etc. and that appears at the end of
  ///  the name.
  List<String>? get suffix;
  @override

  /// [suffixElement] Extensions for suffix
  @JsonKey(name: '_suffix')
  List<PrimitiveElement>? get suffixElement;
  @override

  /// [period] Indicates the period of time when this name was valid for the
  ///  named person.
  Period? get period;
  @override
  @JsonKey(ignore: true)
  _$$HumanNameImplCopyWith<_$HumanNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
