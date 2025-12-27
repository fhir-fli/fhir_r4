part of '../primitive_types.dart';

/// Actual enum for CapabilityStatementKind
enum CapabilityStatementKindBuilderEnum {
  /// instance
  instance,

  /// capability
  capability,

  /// requirements
  requirements,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case CapabilityStatementKindBuilderEnum.instance:
        return 'instance';
      case CapabilityStatementKindBuilderEnum.capability:
        return 'capability';
      case CapabilityStatementKindBuilderEnum.requirements:
        return 'requirements';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CapabilityStatementKindBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return CapabilityStatementKindBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CapabilityStatementKindBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'instance':
        return CapabilityStatementKindBuilderEnum.instance;
      case 'capability':
        return CapabilityStatementKindBuilderEnum.capability;
      case 'requirements':
        return CapabilityStatementKindBuilderEnum.requirements;
    }
    return null;
  }
}

/// How a capability statement is intended to be used.
class CapabilityStatementKindBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CapabilityStatementKindBuilder._({
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
  factory CapabilityStatementKindBuilder(
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
    final valueEnum = CapabilityStatementKindBuilderEnum.fromString(
      valueString,
    );
    return CapabilityStatementKindBuilder._(
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

  /// Create empty [CapabilityStatementKindBuilder]
  /// with element only
  factory CapabilityStatementKindBuilder.empty() =>
      CapabilityStatementKindBuilder._(valueString: null);

  /// Factory constructor to create
  /// [CapabilityStatementKindBuilder] from JSON.
  factory CapabilityStatementKindBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CapabilityStatementKindBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CapabilityStatementKindBuilder cannot be constructed from JSON.',
      );
    }
    return CapabilityStatementKindBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for CapabilityStatementKindBuilder
  final CapabilityStatementKindBuilderEnum? valueEnum;

  /// instance
  static CapabilityStatementKindBuilder instance =
      CapabilityStatementKindBuilder._(
    valueString: 'instance',
    valueEnum: CapabilityStatementKindBuilderEnum.instance,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/capability-statement-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Instance',
    ),
  );

  /// capability
  static CapabilityStatementKindBuilder capability =
      CapabilityStatementKindBuilder._(
    valueString: 'capability',
    valueEnum: CapabilityStatementKindBuilderEnum.capability,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/capability-statement-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Capability',
    ),
  );

  /// requirements
  static CapabilityStatementKindBuilder requirements =
      CapabilityStatementKindBuilder._(
    valueString: 'requirements',
    valueEnum: CapabilityStatementKindBuilderEnum.requirements,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/capability-statement-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Requirements',
    ),
  );

  /// For instances where an Element is present but not value
  static CapabilityStatementKindBuilder elementOnly =
      CapabilityStatementKindBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<CapabilityStatementKindBuilder> values = [
    instance,
    capability,
    requirements,
  ];

  /// Returns the enum value with an element attached
  CapabilityStatementKindBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return CapabilityStatementKindBuilder._(
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
