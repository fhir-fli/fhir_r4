// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for Use
enum UseBuilderEnum {
  /// claim
  claim,

  /// preauthorization
  preauthorization,

  /// predetermination
  predetermination,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case UseBuilderEnum.claim:
        return 'claim';
      case UseBuilderEnum.preauthorization:
        return 'preauthorization';
      case UseBuilderEnum.predetermination:
        return 'predetermination';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static UseBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return UseBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static UseBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'claim':
        return UseBuilderEnum.claim;
      case 'preauthorization':
        return UseBuilderEnum.preauthorization;
      case 'predetermination':
        return UseBuilderEnum.predetermination;
    }
    return null;
  }
}

/// The purpose of the Claim: predetermination, preauthorization, claim.
class UseBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  UseBuilder._({
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
  factory UseBuilder(
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
    final valueEnum = UseBuilderEnum.fromString(
      valueString,
    );
    return UseBuilder._(
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

  /// Create empty [UseBuilder]
  /// with element only
  factory UseBuilder.empty() => UseBuilder._(valueString: null);

  /// Factory constructor to create
  /// [UseBuilder] from JSON.
  factory UseBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UseBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'UseBuilder cannot be constructed from JSON.',
      );
    }
    return UseBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for UseBuilder
  final UseBuilderEnum? valueEnum;

  /// claim
  static UseBuilder claim = UseBuilder._(
    valueString: 'claim',
    valueEnum: UseBuilderEnum.claim,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/claim-use',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Claim',
    ),
  );

  /// preauthorization
  static UseBuilder preauthorization = UseBuilder._(
    valueString: 'preauthorization',
    valueEnum: UseBuilderEnum.preauthorization,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/claim-use',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Preauthorization',
    ),
  );

  /// predetermination
  static UseBuilder predetermination = UseBuilder._(
    valueString: 'predetermination',
    valueEnum: UseBuilderEnum.predetermination,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/claim-use',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Predetermination',
    ),
  );

  /// For instances where an Element is present but not value
  static UseBuilder elementOnly = UseBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<UseBuilder> values = [
    claim,
    preauthorization,
    predetermination,
  ];

  /// Returns the enum value with an element attached
  UseBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return UseBuilder._(
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
