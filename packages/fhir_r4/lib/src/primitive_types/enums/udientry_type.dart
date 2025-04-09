// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for UDIEntryType
enum UDIEntryTypeEnum {
  /// barcode
  barcode,

  /// rfid
  rfid,

  /// manual
  manual,

  /// card
  card,

  /// self-reported
  selfReported,

  /// unknown
  unknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case UDIEntryTypeEnum.barcode:
        return 'barcode';
      case UDIEntryTypeEnum.rfid:
        return 'rfid';
      case UDIEntryTypeEnum.manual:
        return 'manual';
      case UDIEntryTypeEnum.card:
        return 'card';
      case UDIEntryTypeEnum.selfReported:
        return 'self-reported';
      case UDIEntryTypeEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static UDIEntryTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return UDIEntryTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static UDIEntryTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'barcode':
        return UDIEntryTypeEnum.barcode;
      case 'rfid':
        return UDIEntryTypeEnum.rfid;
      case 'manual':
        return UDIEntryTypeEnum.manual;
      case 'card':
        return UDIEntryTypeEnum.card;
      case 'self-reported':
        return UDIEntryTypeEnum.selfReported;
      case 'unknown':
        return UDIEntryTypeEnum.unknown;
    }
    return null;
  }
}

/// Codes to identify how UDI data was entered.
class UDIEntryType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const UDIEntryType._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory UDIEntryType(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = UDIEntryTypeEnum.fromString(valueString);
    return UDIEntryType._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [UDIEntryType]
  /// from JSON.
  factory UDIEntryType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = UDIEntryTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UDIEntryType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'UDIEntryType cannot be constructed from JSON.',
      );
    }
    return UDIEntryType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for UDIEntryType
  final UDIEntryTypeEnum? valueEnum;

  /// barcode
  static const UDIEntryType barcode = UDIEntryType._(
    valueString: 'barcode',
    valueEnum: UDIEntryTypeEnum.barcode,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/udi-entry-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Barcode',
    ),
  );

  /// rfid
  static const UDIEntryType rfid = UDIEntryType._(
    valueString: 'rfid',
    valueEnum: UDIEntryTypeEnum.rfid,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/udi-entry-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'RFID',
    ),
  );

  /// manual
  static const UDIEntryType manual = UDIEntryType._(
    valueString: 'manual',
    valueEnum: UDIEntryTypeEnum.manual,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/udi-entry-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Manual',
    ),
  );

  /// card
  static const UDIEntryType card = UDIEntryType._(
    valueString: 'card',
    valueEnum: UDIEntryTypeEnum.card,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/udi-entry-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Card',
    ),
  );

  /// self_reported
  static const UDIEntryType selfReported = UDIEntryType._(
    valueString: 'self-reported',
    valueEnum: UDIEntryTypeEnum.selfReported,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/udi-entry-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Self Reported',
    ),
  );

  /// unknown
  static const UDIEntryType unknown = UDIEntryType._(
    valueString: 'unknown',
    valueEnum: UDIEntryTypeEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/udi-entry-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<UDIEntryType> values = [
    barcode,
    rfid,
    manual,
    card,
    selfReported,
    unknown,
  ];

  /// Returns the enum value with an element attached
  UDIEntryType withElement(Element? newElement) {
    return UDIEntryType._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  @override
  UDIEntryType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  UDIEntryTypeCopyWithImpl<UDIEntryType> get copyWith =>
      UDIEntryTypeCopyWithImpl<UDIEntryType>(
        this,
        (v) => v as UDIEntryType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class UDIEntryTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  UDIEntryTypeCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      UDIEntryType(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
