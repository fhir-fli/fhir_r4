// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for IdentityAssuranceLevel
enum IdentityAssuranceLevelBuilderEnum {
  /// level1
  level1,

  /// level2
  level2,

  /// level3
  level3,

  /// level4
  level4,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case IdentityAssuranceLevelBuilderEnum.level1:
        return 'level1';
      case IdentityAssuranceLevelBuilderEnum.level2:
        return 'level2';
      case IdentityAssuranceLevelBuilderEnum.level3:
        return 'level3';
      case IdentityAssuranceLevelBuilderEnum.level4:
        return 'level4';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static IdentityAssuranceLevelBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return IdentityAssuranceLevelBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static IdentityAssuranceLevelBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'level1':
        return IdentityAssuranceLevelBuilderEnum.level1;
      case 'level2':
        return IdentityAssuranceLevelBuilderEnum.level2;
      case 'level3':
        return IdentityAssuranceLevelBuilderEnum.level3;
      case 'level4':
        return IdentityAssuranceLevelBuilderEnum.level4;
    }
    return null;
  }
}

/// The level of confidence that this link represents the same actual
/// person, based on NIST Authentication Levels.
class IdentityAssuranceLevelBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  IdentityAssuranceLevelBuilder._({
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
  factory IdentityAssuranceLevelBuilder(
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
    final valueEnum = IdentityAssuranceLevelBuilderEnum.fromString(
      valueString,
    );
    return IdentityAssuranceLevelBuilder._(
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

  /// Create empty [IdentityAssuranceLevelBuilder]
  /// with element only
  factory IdentityAssuranceLevelBuilder.empty() =>
      IdentityAssuranceLevelBuilder._(valueString: null);

  /// Factory constructor to create
  /// [IdentityAssuranceLevelBuilder] from JSON.
  factory IdentityAssuranceLevelBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IdentityAssuranceLevelBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'IdentityAssuranceLevelBuilder cannot be constructed from JSON.',
      );
    }
    return IdentityAssuranceLevelBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for IdentityAssuranceLevelBuilder
  final IdentityAssuranceLevelBuilderEnum? valueEnum;

  /// level1
  static IdentityAssuranceLevelBuilder level1 = IdentityAssuranceLevelBuilder._(
    valueString: 'level1',
    valueEnum: IdentityAssuranceLevelBuilderEnum.level1,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/identity-assuranceLevel',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Level 1',
    ),
  );

  /// level2
  static IdentityAssuranceLevelBuilder level2 = IdentityAssuranceLevelBuilder._(
    valueString: 'level2',
    valueEnum: IdentityAssuranceLevelBuilderEnum.level2,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/identity-assuranceLevel',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Level 2',
    ),
  );

  /// level3
  static IdentityAssuranceLevelBuilder level3 = IdentityAssuranceLevelBuilder._(
    valueString: 'level3',
    valueEnum: IdentityAssuranceLevelBuilderEnum.level3,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/identity-assuranceLevel',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Level 3',
    ),
  );

  /// level4
  static IdentityAssuranceLevelBuilder level4 = IdentityAssuranceLevelBuilder._(
    valueString: 'level4',
    valueEnum: IdentityAssuranceLevelBuilderEnum.level4,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/identity-assuranceLevel',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Level 4',
    ),
  );

  /// For instances where an Element is present but not value
  static IdentityAssuranceLevelBuilder elementOnly =
      IdentityAssuranceLevelBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<IdentityAssuranceLevelBuilder> values = [
    level1,
    level2,
    level3,
    level4,
  ];

  /// Returns the enum value with an element attached
  IdentityAssuranceLevelBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return IdentityAssuranceLevelBuilder._(
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
