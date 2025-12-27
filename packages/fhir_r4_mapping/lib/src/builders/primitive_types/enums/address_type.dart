part of '../primitive_types.dart';

/// Actual enum for AddressType
enum AddressTypeBuilderEnum {
  /// postal
  postal,

  /// physical
  physical,

  /// both
  both,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AddressTypeBuilderEnum.postal:
        return 'postal';
      case AddressTypeBuilderEnum.physical:
        return 'physical';
      case AddressTypeBuilderEnum.both:
        return 'both';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AddressTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return AddressTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AddressTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'postal':
        return AddressTypeBuilderEnum.postal;
      case 'physical':
        return AddressTypeBuilderEnum.physical;
      case 'both':
        return AddressTypeBuilderEnum.both;
    }
    return null;
  }
}

/// The type of an address (physical / postal).
class AddressTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AddressTypeBuilder._({
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
  factory AddressTypeBuilder(
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
    final valueEnum = AddressTypeBuilderEnum.fromString(
      valueString,
    );
    return AddressTypeBuilder._(
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

  /// Create empty [AddressTypeBuilder]
  /// with element only
  factory AddressTypeBuilder.empty() => AddressTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [AddressTypeBuilder] from JSON.
  factory AddressTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AddressTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AddressTypeBuilder cannot be constructed from JSON.',
      );
    }
    return AddressTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for AddressTypeBuilder
  final AddressTypeBuilderEnum? valueEnum;

  /// postal
  static AddressTypeBuilder postal = AddressTypeBuilder._(
    valueString: 'postal',
    valueEnum: AddressTypeBuilderEnum.postal,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/address-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Postal',
    ),
  );

  /// physical
  static AddressTypeBuilder physical = AddressTypeBuilder._(
    valueString: 'physical',
    valueEnum: AddressTypeBuilderEnum.physical,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/address-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Physical',
    ),
  );

  /// both
  static AddressTypeBuilder both = AddressTypeBuilder._(
    valueString: 'both',
    valueEnum: AddressTypeBuilderEnum.both,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/address-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Postal & Physical',
    ),
  );

  /// For instances where an Element is present but not value
  static AddressTypeBuilder elementOnly = AddressTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<AddressTypeBuilder> values = [
    postal,
    physical,
    both,
  ];

  /// Returns the enum value with an element attached
  AddressTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return AddressTypeBuilder._(
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
