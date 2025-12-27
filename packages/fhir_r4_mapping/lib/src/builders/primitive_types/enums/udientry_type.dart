part of '../primitive_types.dart';

/// Actual enum for UDIEntryType
enum UDIEntryTypeBuilderEnum {
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
      case UDIEntryTypeBuilderEnum.barcode:
        return 'barcode';
      case UDIEntryTypeBuilderEnum.rfid:
        return 'rfid';
      case UDIEntryTypeBuilderEnum.manual:
        return 'manual';
      case UDIEntryTypeBuilderEnum.card:
        return 'card';
      case UDIEntryTypeBuilderEnum.selfReported:
        return 'self-reported';
      case UDIEntryTypeBuilderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static UDIEntryTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return UDIEntryTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static UDIEntryTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'barcode':
        return UDIEntryTypeBuilderEnum.barcode;
      case 'rfid':
        return UDIEntryTypeBuilderEnum.rfid;
      case 'manual':
        return UDIEntryTypeBuilderEnum.manual;
      case 'card':
        return UDIEntryTypeBuilderEnum.card;
      case 'self-reported':
        return UDIEntryTypeBuilderEnum.selfReported;
      case 'unknown':
        return UDIEntryTypeBuilderEnum.unknown;
    }
    return null;
  }
}

/// Codes to identify how UDI data was entered.
class UDIEntryTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  UDIEntryTypeBuilder._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory UDIEntryTypeBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = UDIEntryTypeBuilderEnum.fromString(
      valueString,
    );
    return UDIEntryTypeBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [UDIEntryTypeBuilder]
  /// with element only
  factory UDIEntryTypeBuilder.empty() =>
      UDIEntryTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [UDIEntryTypeBuilder] from JSON.
  factory UDIEntryTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UDIEntryTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'UDIEntryTypeBuilder cannot be constructed from JSON.',
      );
    }
    return UDIEntryTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for UDIEntryTypeBuilder
  final UDIEntryTypeBuilderEnum? valueEnum;

  /// barcode
  static UDIEntryTypeBuilder barcode = UDIEntryTypeBuilder._(
    valueString: 'barcode',
    valueEnum: UDIEntryTypeBuilderEnum.barcode,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/udi-entry-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Barcode',
    ),
  );

  /// rfid
  static UDIEntryTypeBuilder rfid = UDIEntryTypeBuilder._(
    valueString: 'rfid',
    valueEnum: UDIEntryTypeBuilderEnum.rfid,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/udi-entry-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'RFID',
    ),
  );

  /// manual
  static UDIEntryTypeBuilder manual = UDIEntryTypeBuilder._(
    valueString: 'manual',
    valueEnum: UDIEntryTypeBuilderEnum.manual,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/udi-entry-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Manual',
    ),
  );

  /// card
  static UDIEntryTypeBuilder card = UDIEntryTypeBuilder._(
    valueString: 'card',
    valueEnum: UDIEntryTypeBuilderEnum.card,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/udi-entry-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Card',
    ),
  );

  /// self_reported
  static UDIEntryTypeBuilder selfReported = UDIEntryTypeBuilder._(
    valueString: 'self-reported',
    valueEnum: UDIEntryTypeBuilderEnum.selfReported,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/udi-entry-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Self Reported',
    ),
  );

  /// unknown
  static UDIEntryTypeBuilder unknown = UDIEntryTypeBuilder._(
    valueString: 'unknown',
    valueEnum: UDIEntryTypeBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/udi-entry-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// For instances where an Element is present but not value
  static UDIEntryTypeBuilder elementOnly = UDIEntryTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<UDIEntryTypeBuilder> values = [
    barcode,
    rfid,
    manual,
    card,
    selfReported,
    unknown,
  ];

  /// Returns the enum value with an element attached
  UDIEntryTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return UDIEntryTypeBuilder._(
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
}
