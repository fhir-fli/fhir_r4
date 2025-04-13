// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ReferenceVersionRules
enum ReferenceVersionRulesBuilderEnum {
  /// either
  either,

  /// independent
  independent,

  /// specific
  specific,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ReferenceVersionRulesBuilderEnum.either:
        return 'either';
      case ReferenceVersionRulesBuilderEnum.independent:
        return 'independent';
      case ReferenceVersionRulesBuilderEnum.specific:
        return 'specific';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ReferenceVersionRulesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ReferenceVersionRulesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ReferenceVersionRulesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'either':
        return ReferenceVersionRulesBuilderEnum.either;
      case 'independent':
        return ReferenceVersionRulesBuilderEnum.independent;
      case 'specific':
        return ReferenceVersionRulesBuilderEnum.specific;
    }
    return null;
  }
}

/// Whether a reference needs to be version specific or version
/// independent, or whether either can be used.
class ReferenceVersionRulesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ReferenceVersionRulesBuilder._({
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
  factory ReferenceVersionRulesBuilder(
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
    final valueEnum = ReferenceVersionRulesBuilderEnum.fromString(
      valueString,
    );
    return ReferenceVersionRulesBuilder._(
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

  /// Create empty [ReferenceVersionRulesBuilder]
  /// with element only
  factory ReferenceVersionRulesBuilder.empty() =>
      ReferenceVersionRulesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ReferenceVersionRulesBuilder] from JSON.
  factory ReferenceVersionRulesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReferenceVersionRulesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ReferenceVersionRulesBuilder cannot be constructed from JSON.',
      );
    }
    return ReferenceVersionRulesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ReferenceVersionRulesBuilder
  final ReferenceVersionRulesBuilderEnum? valueEnum;

  /// either
  static ReferenceVersionRulesBuilder either = ReferenceVersionRulesBuilder._(
    valueString: 'either',
    valueEnum: ReferenceVersionRulesBuilderEnum.either,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/reference-version-rules',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Either Specific or independent',
    ),
  );

  /// independent
  static ReferenceVersionRulesBuilder independent =
      ReferenceVersionRulesBuilder._(
    valueString: 'independent',
    valueEnum: ReferenceVersionRulesBuilderEnum.independent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/reference-version-rules',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Version independent',
    ),
  );

  /// specific
  static ReferenceVersionRulesBuilder specific = ReferenceVersionRulesBuilder._(
    valueString: 'specific',
    valueEnum: ReferenceVersionRulesBuilderEnum.specific,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/reference-version-rules',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Version Specific',
    ),
  );

  /// For instances where an Element is present but not value
  static ReferenceVersionRulesBuilder elementOnly =
      ReferenceVersionRulesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ReferenceVersionRulesBuilder> values = [
    either,
    independent,
    specific,
  ];

  /// Returns the enum value with an element attached
  ReferenceVersionRulesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ReferenceVersionRulesBuilder._(
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
