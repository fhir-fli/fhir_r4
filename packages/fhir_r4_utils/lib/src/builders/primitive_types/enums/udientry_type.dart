// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes to identify how UDI data was entered.
class UDIEntryTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  UDIEntryTypeBuilder._({
    required super.valueString,
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
    return UDIEntryTypeBuilder._(
      valueString: valueString,
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

  /// Create empty [UDIEntryTypeBuilder] with element only
  factory UDIEntryTypeBuilder.empty() => UDIEntryTypeBuilder._(valueString: '');

  /// Factory constructor to create [UDIEntryTypeBuilder]
  /// from JSON.
  factory UDIEntryTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UDIEntryTypeBuilder.elementOnly.withElement(element);
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

  /// barcode
  static UDIEntryTypeBuilder barcode = UDIEntryTypeBuilder._(
    valueString: 'barcode',
    system: 'http://hl7.org/fhir/ValueSet/udi-entry-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Barcode'.toFhirStringBuilder,
  );

  /// rfid
  static UDIEntryTypeBuilder rfid = UDIEntryTypeBuilder._(
    valueString: 'rfid',
    system: 'http://hl7.org/fhir/ValueSet/udi-entry-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'RFID'.toFhirStringBuilder,
  );

  /// manual
  static UDIEntryTypeBuilder manual = UDIEntryTypeBuilder._(
    valueString: 'manual',
    system: 'http://hl7.org/fhir/ValueSet/udi-entry-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Manual'.toFhirStringBuilder,
  );

  /// card
  static UDIEntryTypeBuilder card = UDIEntryTypeBuilder._(
    valueString: 'card',
    system: 'http://hl7.org/fhir/ValueSet/udi-entry-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Card'.toFhirStringBuilder,
  );

  /// self_reported
  static UDIEntryTypeBuilder self_reported = UDIEntryTypeBuilder._(
    valueString: 'self-reported',
    system: 'http://hl7.org/fhir/ValueSet/udi-entry-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Self Reported'.toFhirStringBuilder,
  );

  /// unknown
  static UDIEntryTypeBuilder unknown = UDIEntryTypeBuilder._(
    valueString: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/udi-entry-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unknown'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static UDIEntryTypeBuilder elementOnly =
      UDIEntryTypeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<UDIEntryTypeBuilder> values = [
    barcode,
    rfid,
    manual,
    card,
    self_reported,
    unknown,
  ];

  /// Clones the current instance
  @override
  UDIEntryTypeBuilder clone() => UDIEntryTypeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

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

  /// Creates a modified copy with updated properties.
  @override
  UDIEntryTypeBuilder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError(
        'Invalid input for UDIEntryType: $newValue',
      );
    }
    return UDIEntryTypeBuilder._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
