// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ConsentProvisionType
enum ConsentProvisionTypeBuilderEnum {
  /// deny
  deny,

  /// permit
  permit,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ConsentProvisionTypeBuilderEnum.deny:
        return 'deny';
      case ConsentProvisionTypeBuilderEnum.permit:
        return 'permit';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConsentProvisionTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ConsentProvisionTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConsentProvisionTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'deny':
        return ConsentProvisionTypeBuilderEnum.deny;
      case 'permit':
        return ConsentProvisionTypeBuilderEnum.permit;
    }
    return null;
  }
}

/// How a rule statement is applied, such as adding additional consent or
/// removing consent.
class ConsentProvisionTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ConsentProvisionTypeBuilder._({
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
  factory ConsentProvisionTypeBuilder(
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
    final valueEnum = ConsentProvisionTypeBuilderEnum.fromString(
      valueString,
    );
    return ConsentProvisionTypeBuilder._(
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

  /// Create empty [ConsentProvisionTypeBuilder]
  /// with element only
  factory ConsentProvisionTypeBuilder.empty() =>
      ConsentProvisionTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ConsentProvisionTypeBuilder] from JSON.
  factory ConsentProvisionTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentProvisionTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConsentProvisionTypeBuilder cannot be constructed from JSON.',
      );
    }
    return ConsentProvisionTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ConsentProvisionTypeBuilder
  final ConsentProvisionTypeBuilderEnum? valueEnum;

  /// deny
  static ConsentProvisionTypeBuilder deny = ConsentProvisionTypeBuilder._(
    valueString: 'deny',
    valueEnum: ConsentProvisionTypeBuilderEnum.deny,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/consent-provision-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Opt Out',
    ),
  );

  /// permit
  static ConsentProvisionTypeBuilder permit = ConsentProvisionTypeBuilder._(
    valueString: 'permit',
    valueEnum: ConsentProvisionTypeBuilderEnum.permit,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/consent-provision-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Opt In',
    ),
  );

  /// For instances where an Element is present but not value
  static ConsentProvisionTypeBuilder elementOnly =
      ConsentProvisionTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ConsentProvisionTypeBuilder> values = [
    deny,
    permit,
  ];

  /// Returns the enum value with an element attached
  ConsentProvisionTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ConsentProvisionTypeBuilder._(
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
