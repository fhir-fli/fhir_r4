// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
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

  /// [use] The purpose of this address.
  @JsonKey(unknownEnumValue: AddressUse.unknown)
  AddressUse? get use => throw _privateConstructorUsedError;

  /// [useElement] Extensions for use
  @JsonKey(name: '_use')
  PrimitiveElement? get useElement => throw _privateConstructorUsedError;

  /// [type] Distinguishes between physical addresses (those you can visit) and
  /// mailing addresses (e.g. PO Boxes and care-of addresses). Most addresses
  ///  are both.
  @JsonKey(unknownEnumValue: AddressType.unknown)
  AddressType? get type => throw _privateConstructorUsedError;

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;

  /// [text] Specifies the entire address as it should be displayed e.g. on a
  /// postal label. This may be provided instead of or as well as the specific
  ///  parts.
  String? get text => throw _privateConstructorUsedError;

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement => throw _privateConstructorUsedError;

  /// [line] This component contains the house number, apartment number, street
  /// name, street direction,  P.O. Box number, delivery hints, and similar
  ///  address information.
  List<String>? get line => throw _privateConstructorUsedError;

  /// [lineElement] Extensions for line
  @JsonKey(name: '_line')
  List<PrimitiveElement>? get lineElement => throw _privateConstructorUsedError;

  /// [city] The name of the city, town, suburb, village or other community or
  ///  delivery center.
  String? get city => throw _privateConstructorUsedError;

  /// [cityElement] Extensions for city
  @JsonKey(name: '_city')
  PrimitiveElement? get cityElement => throw _privateConstructorUsedError;

  /// [district] The name of the administrative area (county).
  String? get district => throw _privateConstructorUsedError;

  /// [districtElement] Extensions for district
  @JsonKey(name: '_district')
  PrimitiveElement? get districtElement => throw _privateConstructorUsedError;

  /// [state] Sub-unit of a country with limited sovereignty in a federally
  /// organized country. A code may be used if codes are in common use (e.g. US
  ///  2 letter state codes).
  String? get state => throw _privateConstructorUsedError;

  /// [stateElement] Extensions for state
  @JsonKey(name: '_state')
  PrimitiveElement? get stateElement => throw _privateConstructorUsedError;

  /// [postalCode] A postal code designating a region defined by the postal
  ///  service.
  String? get postalCode => throw _privateConstructorUsedError;

  /// [postalCodeElement] Extensions for postalCode
  @JsonKey(name: '_postalCode')
  PrimitiveElement? get postalCodeElement => throw _privateConstructorUsedError;

  /// [country] Country - a nation as commonly understood or generally
  ///  accepted.
  String? get country => throw _privateConstructorUsedError;

  /// [countryElement] Extensions for country
  @JsonKey(name: '_country')
  PrimitiveElement? get countryElement => throw _privateConstructorUsedError;

  /// [period] Time period when address was/is in use.
  Period? get period => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: AddressUse.unknown) AddressUse? use,
      @JsonKey(name: '_use') PrimitiveElement? useElement,
      @JsonKey(unknownEnumValue: AddressType.unknown) AddressType? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      String? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement,
      List<String>? line,
      @JsonKey(name: '_line') List<PrimitiveElement>? lineElement,
      String? city,
      @JsonKey(name: '_city') PrimitiveElement? cityElement,
      String? district,
      @JsonKey(name: '_district') PrimitiveElement? districtElement,
      String? state,
      @JsonKey(name: '_state') PrimitiveElement? stateElement,
      String? postalCode,
      @JsonKey(name: '_postalCode') PrimitiveElement? postalCodeElement,
      String? country,
      @JsonKey(name: '_country') PrimitiveElement? countryElement,
      Period? period});

  $PeriodCopyWith<$Res>? get period;
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

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
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
    Object? line = freezed,
    Object? lineElement = freezed,
    Object? city = freezed,
    Object? cityElement = freezed,
    Object? district = freezed,
    Object? districtElement = freezed,
    Object? state = freezed,
    Object? stateElement = freezed,
    Object? postalCode = freezed,
    Object? postalCodeElement = freezed,
    Object? country = freezed,
    Object? countryElement = freezed,
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
              as AddressUse?,
      useElement: freezed == useElement
          ? _value.useElement
          : useElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AddressType?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      line: freezed == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lineElement: freezed == lineElement
          ? _value.lineElement
          : lineElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      cityElement: freezed == cityElement
          ? _value.cityElement
          : cityElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      districtElement: freezed == districtElement
          ? _value.districtElement
          : districtElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      stateElement: freezed == stateElement
          ? _value.stateElement
          : stateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCodeElement: freezed == postalCodeElement
          ? _value.postalCodeElement
          : postalCodeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      countryElement: freezed == countryElement
          ? _value.countryElement
          : countryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
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
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: AddressUse.unknown) AddressUse? use,
      @JsonKey(name: '_use') PrimitiveElement? useElement,
      @JsonKey(unknownEnumValue: AddressType.unknown) AddressType? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      String? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement,
      List<String>? line,
      @JsonKey(name: '_line') List<PrimitiveElement>? lineElement,
      String? city,
      @JsonKey(name: '_city') PrimitiveElement? cityElement,
      String? district,
      @JsonKey(name: '_district') PrimitiveElement? districtElement,
      String? state,
      @JsonKey(name: '_state') PrimitiveElement? stateElement,
      String? postalCode,
      @JsonKey(name: '_postalCode') PrimitiveElement? postalCodeElement,
      String? country,
      @JsonKey(name: '_country') PrimitiveElement? countryElement,
      Period? period});

  @override
  $PeriodCopyWith<$Res>? get period;
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? use = freezed,
    Object? useElement = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
    Object? line = freezed,
    Object? lineElement = freezed,
    Object? city = freezed,
    Object? cityElement = freezed,
    Object? district = freezed,
    Object? districtElement = freezed,
    Object? state = freezed,
    Object? stateElement = freezed,
    Object? postalCode = freezed,
    Object? postalCodeElement = freezed,
    Object? country = freezed,
    Object? countryElement = freezed,
    Object? period = freezed,
  }) {
    return _then(_$AddressImpl(
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
              as AddressUse?,
      useElement: freezed == useElement
          ? _value.useElement
          : useElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AddressType?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      line: freezed == line
          ? _value._line
          : line // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lineElement: freezed == lineElement
          ? _value._lineElement
          : lineElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      cityElement: freezed == cityElement
          ? _value.cityElement
          : cityElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      districtElement: freezed == districtElement
          ? _value.districtElement
          : districtElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      stateElement: freezed == stateElement
          ? _value.stateElement
          : stateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCodeElement: freezed == postalCodeElement
          ? _value.postalCodeElement
          : postalCodeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      countryElement: freezed == countryElement
          ? _value.countryElement
          : countryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl extends _Address {
  _$AddressImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: AddressUse.unknown) this.use,
      @JsonKey(name: '_use') this.useElement,
      @JsonKey(unknownEnumValue: AddressType.unknown) this.type,
      @JsonKey(name: '_type') this.typeElement,
      this.text,
      @JsonKey(name: '_text') this.textElement,
      final List<String>? line,
      @JsonKey(name: '_line') final List<PrimitiveElement>? lineElement,
      this.city,
      @JsonKey(name: '_city') this.cityElement,
      this.district,
      @JsonKey(name: '_district') this.districtElement,
      this.state,
      @JsonKey(name: '_state') this.stateElement,
      this.postalCode,
      @JsonKey(name: '_postalCode') this.postalCodeElement,
      this.country,
      @JsonKey(name: '_country') this.countryElement,
      this.period})
      : _extension_ = extension_,
        _line = line,
        _lineElement = lineElement,
        super._();

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

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

  /// [use] The purpose of this address.
  @override
  @JsonKey(unknownEnumValue: AddressUse.unknown)
  final AddressUse? use;

  /// [useElement] Extensions for use
  @override
  @JsonKey(name: '_use')
  final PrimitiveElement? useElement;

  /// [type] Distinguishes between physical addresses (those you can visit) and
  /// mailing addresses (e.g. PO Boxes and care-of addresses). Most addresses
  ///  are both.
  @override
  @JsonKey(unknownEnumValue: AddressType.unknown)
  final AddressType? type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;

  /// [text] Specifies the entire address as it should be displayed e.g. on a
  /// postal label. This may be provided instead of or as well as the specific
  ///  parts.
  @override
  final String? text;

  /// [textElement] Extensions for text
  @override
  @JsonKey(name: '_text')
  final PrimitiveElement? textElement;

  /// [line] This component contains the house number, apartment number, street
  /// name, street direction,  P.O. Box number, delivery hints, and similar
  ///  address information.
  final List<String>? _line;

  /// [line] This component contains the house number, apartment number, street
  /// name, street direction,  P.O. Box number, delivery hints, and similar
  ///  address information.
  @override
  List<String>? get line {
    final value = _line;
    if (value == null) return null;
    if (_line is EqualUnmodifiableListView) return _line;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [lineElement] Extensions for line
  final List<PrimitiveElement>? _lineElement;

  /// [lineElement] Extensions for line
  @override
  @JsonKey(name: '_line')
  List<PrimitiveElement>? get lineElement {
    final value = _lineElement;
    if (value == null) return null;
    if (_lineElement is EqualUnmodifiableListView) return _lineElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [city] The name of the city, town, suburb, village or other community or
  ///  delivery center.
  @override
  final String? city;

  /// [cityElement] Extensions for city
  @override
  @JsonKey(name: '_city')
  final PrimitiveElement? cityElement;

  /// [district] The name of the administrative area (county).
  @override
  final String? district;

  /// [districtElement] Extensions for district
  @override
  @JsonKey(name: '_district')
  final PrimitiveElement? districtElement;

  /// [state] Sub-unit of a country with limited sovereignty in a federally
  /// organized country. A code may be used if codes are in common use (e.g. US
  ///  2 letter state codes).
  @override
  final String? state;

  /// [stateElement] Extensions for state
  @override
  @JsonKey(name: '_state')
  final PrimitiveElement? stateElement;

  /// [postalCode] A postal code designating a region defined by the postal
  ///  service.
  @override
  final String? postalCode;

  /// [postalCodeElement] Extensions for postalCode
  @override
  @JsonKey(name: '_postalCode')
  final PrimitiveElement? postalCodeElement;

  /// [country] Country - a nation as commonly understood or generally
  ///  accepted.
  @override
  final String? country;

  /// [countryElement] Extensions for country
  @override
  @JsonKey(name: '_country')
  final PrimitiveElement? countryElement;

  /// [period] Time period when address was/is in use.
  @override
  final Period? period;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.use, use) || other.use == use) &&
            (identical(other.useElement, useElement) ||
                other.useElement == useElement) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.textElement, textElement) ||
                other.textElement == textElement) &&
            const DeepCollectionEquality().equals(other._line, _line) &&
            const DeepCollectionEquality()
                .equals(other._lineElement, _lineElement) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.cityElement, cityElement) ||
                other.cityElement == cityElement) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.districtElement, districtElement) ||
                other.districtElement == districtElement) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.stateElement, stateElement) ||
                other.stateElement == stateElement) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.postalCodeElement, postalCodeElement) ||
                other.postalCodeElement == postalCodeElement) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.countryElement, countryElement) ||
                other.countryElement == countryElement) &&
            (identical(other.period, period) || other.period == period));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        use,
        useElement,
        type,
        typeElement,
        text,
        textElement,
        const DeepCollectionEquality().hash(_line),
        const DeepCollectionEquality().hash(_lineElement),
        city,
        cityElement,
        district,
        districtElement,
        state,
        stateElement,
        postalCode,
        postalCodeElement,
        country,
        countryElement,
        period
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressImplToJson(
      this,
    );
  }
}

abstract class _Address extends Address {
  factory _Address(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: AddressUse.unknown) final AddressUse? use,
      @JsonKey(name: '_use') final PrimitiveElement? useElement,
      @JsonKey(unknownEnumValue: AddressType.unknown) final AddressType? type,
      @JsonKey(name: '_type') final PrimitiveElement? typeElement,
      final String? text,
      @JsonKey(name: '_text') final PrimitiveElement? textElement,
      final List<String>? line,
      @JsonKey(name: '_line') final List<PrimitiveElement>? lineElement,
      final String? city,
      @JsonKey(name: '_city') final PrimitiveElement? cityElement,
      final String? district,
      @JsonKey(name: '_district') final PrimitiveElement? districtElement,
      final String? state,
      @JsonKey(name: '_state') final PrimitiveElement? stateElement,
      final String? postalCode,
      @JsonKey(name: '_postalCode') final PrimitiveElement? postalCodeElement,
      final String? country,
      @JsonKey(name: '_country') final PrimitiveElement? countryElement,
      final Period? period}) = _$AddressImpl;
  _Address._() : super._();

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

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

  /// [use] The purpose of this address.
  @JsonKey(unknownEnumValue: AddressUse.unknown)
  AddressUse? get use;
  @override

  /// [useElement] Extensions for use
  @JsonKey(name: '_use')
  PrimitiveElement? get useElement;
  @override

  /// [type] Distinguishes between physical addresses (those you can visit) and
  /// mailing addresses (e.g. PO Boxes and care-of addresses). Most addresses
  ///  are both.
  @JsonKey(unknownEnumValue: AddressType.unknown)
  AddressType? get type;
  @override

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;
  @override

  /// [text] Specifies the entire address as it should be displayed e.g. on a
  /// postal label. This may be provided instead of or as well as the specific
  ///  parts.
  String? get text;
  @override

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement;
  @override

  /// [line] This component contains the house number, apartment number, street
  /// name, street direction,  P.O. Box number, delivery hints, and similar
  ///  address information.
  List<String>? get line;
  @override

  /// [lineElement] Extensions for line
  @JsonKey(name: '_line')
  List<PrimitiveElement>? get lineElement;
  @override

  /// [city] The name of the city, town, suburb, village or other community or
  ///  delivery center.
  String? get city;
  @override

  /// [cityElement] Extensions for city
  @JsonKey(name: '_city')
  PrimitiveElement? get cityElement;
  @override

  /// [district] The name of the administrative area (county).
  String? get district;
  @override

  /// [districtElement] Extensions for district
  @JsonKey(name: '_district')
  PrimitiveElement? get districtElement;
  @override

  /// [state] Sub-unit of a country with limited sovereignty in a federally
  /// organized country. A code may be used if codes are in common use (e.g. US
  ///  2 letter state codes).
  String? get state;
  @override

  /// [stateElement] Extensions for state
  @JsonKey(name: '_state')
  PrimitiveElement? get stateElement;
  @override

  /// [postalCode] A postal code designating a region defined by the postal
  ///  service.
  String? get postalCode;
  @override

  /// [postalCodeElement] Extensions for postalCode
  @JsonKey(name: '_postalCode')
  PrimitiveElement? get postalCodeElement;
  @override

  /// [country] Country - a nation as commonly understood or generally
  ///  accepted.
  String? get country;
  @override

  /// [countryElement] Extensions for country
  @JsonKey(name: '_country')
  PrimitiveElement? get countryElement;
  @override

  /// [period] Time period when address was/is in use.
  Period? get period;
  @override
  @JsonKey(ignore: true)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
