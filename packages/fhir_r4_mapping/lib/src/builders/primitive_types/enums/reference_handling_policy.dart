part of '../primitive_types.dart';

/// Actual enum for ReferenceHandlingPolicy
enum ReferenceHandlingPolicyBuilderEnum {
  /// literal
  literal,

  /// logical
  logical,

  /// resolves
  resolves,

  /// enforced
  enforced,

  /// local
  local,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ReferenceHandlingPolicyBuilderEnum.literal:
        return 'literal';
      case ReferenceHandlingPolicyBuilderEnum.logical:
        return 'logical';
      case ReferenceHandlingPolicyBuilderEnum.resolves:
        return 'resolves';
      case ReferenceHandlingPolicyBuilderEnum.enforced:
        return 'enforced';
      case ReferenceHandlingPolicyBuilderEnum.local:
        return 'local';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ReferenceHandlingPolicyBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ReferenceHandlingPolicyBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ReferenceHandlingPolicyBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'literal':
        return ReferenceHandlingPolicyBuilderEnum.literal;
      case 'logical':
        return ReferenceHandlingPolicyBuilderEnum.logical;
      case 'resolves':
        return ReferenceHandlingPolicyBuilderEnum.resolves;
      case 'enforced':
        return ReferenceHandlingPolicyBuilderEnum.enforced;
      case 'local':
        return ReferenceHandlingPolicyBuilderEnum.local;
    }
    return null;
  }
}

/// A set of flags that defines how references are supported.
class ReferenceHandlingPolicyBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ReferenceHandlingPolicyBuilder._({
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
  factory ReferenceHandlingPolicyBuilder(
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
    final valueEnum = ReferenceHandlingPolicyBuilderEnum.fromString(
      valueString,
    );
    return ReferenceHandlingPolicyBuilder._(
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

  /// Create empty [ReferenceHandlingPolicyBuilder]
  /// with element only
  factory ReferenceHandlingPolicyBuilder.empty() =>
      ReferenceHandlingPolicyBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ReferenceHandlingPolicyBuilder] from JSON.
  factory ReferenceHandlingPolicyBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReferenceHandlingPolicyBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ReferenceHandlingPolicyBuilder cannot be constructed from JSON.',
      );
    }
    return ReferenceHandlingPolicyBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ReferenceHandlingPolicyBuilder
  final ReferenceHandlingPolicyBuilderEnum? valueEnum;

  /// literal
  static ReferenceHandlingPolicyBuilder literal =
      ReferenceHandlingPolicyBuilder._(
    valueString: 'literal',
    valueEnum: ReferenceHandlingPolicyBuilderEnum.literal,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/reference-handling-policy',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Literal References',
    ),
  );

  /// logical
  static ReferenceHandlingPolicyBuilder logical =
      ReferenceHandlingPolicyBuilder._(
    valueString: 'logical',
    valueEnum: ReferenceHandlingPolicyBuilderEnum.logical,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/reference-handling-policy',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Logical References',
    ),
  );

  /// resolves
  static ReferenceHandlingPolicyBuilder resolves =
      ReferenceHandlingPolicyBuilder._(
    valueString: 'resolves',
    valueEnum: ReferenceHandlingPolicyBuilderEnum.resolves,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/reference-handling-policy',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Resolves References',
    ),
  );

  /// enforced
  static ReferenceHandlingPolicyBuilder enforced =
      ReferenceHandlingPolicyBuilder._(
    valueString: 'enforced',
    valueEnum: ReferenceHandlingPolicyBuilderEnum.enforced,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/reference-handling-policy',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Reference Integrity Enforced',
    ),
  );

  /// local
  static ReferenceHandlingPolicyBuilder local =
      ReferenceHandlingPolicyBuilder._(
    valueString: 'local',
    valueEnum: ReferenceHandlingPolicyBuilderEnum.local,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/reference-handling-policy',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Local References Only',
    ),
  );

  /// For instances where an Element is present but not value
  static ReferenceHandlingPolicyBuilder elementOnly =
      ReferenceHandlingPolicyBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ReferenceHandlingPolicyBuilder> values = [
    literal,
    logical,
    resolves,
    enforced,
    local,
  ];

  /// Returns the enum value with an element attached
  ReferenceHandlingPolicyBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ReferenceHandlingPolicyBuilder._(
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
