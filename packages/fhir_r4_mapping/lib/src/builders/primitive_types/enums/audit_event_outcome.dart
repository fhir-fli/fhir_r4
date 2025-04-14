// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AuditEventOutcome
enum AuditEventOutcomeBuilderEnum {
  /// 0
  value0,

  /// 4
  value4,

  /// 8
  value8,

  /// 12
  value12,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AuditEventOutcomeBuilderEnum.value0:
        return '0';
      case AuditEventOutcomeBuilderEnum.value4:
        return '4';
      case AuditEventOutcomeBuilderEnum.value8:
        return '8';
      case AuditEventOutcomeBuilderEnum.value12:
        return '12';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AuditEventOutcomeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return AuditEventOutcomeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AuditEventOutcomeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case '0':
        return AuditEventOutcomeBuilderEnum.value0;
      case '4':
        return AuditEventOutcomeBuilderEnum.value4;
      case '8':
        return AuditEventOutcomeBuilderEnum.value8;
      case '12':
        return AuditEventOutcomeBuilderEnum.value12;
    }
    return null;
  }
}

/// Indicates whether the event succeeded or failed.
class AuditEventOutcomeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AuditEventOutcomeBuilder._({
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
  factory AuditEventOutcomeBuilder(
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
    final valueEnum = AuditEventOutcomeBuilderEnum.fromString(
      valueString,
    );
    return AuditEventOutcomeBuilder._(
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

  /// Create empty [AuditEventOutcomeBuilder]
  /// with element only
  factory AuditEventOutcomeBuilder.empty() =>
      AuditEventOutcomeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [AuditEventOutcomeBuilder] from JSON.
  factory AuditEventOutcomeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventOutcomeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AuditEventOutcomeBuilder cannot be constructed from JSON.',
      );
    }
    return AuditEventOutcomeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for AuditEventOutcomeBuilder
  final AuditEventOutcomeBuilderEnum? valueEnum;

  /// value0
  static AuditEventOutcomeBuilder value0 = AuditEventOutcomeBuilder._(
    valueString: '0',
    valueEnum: AuditEventOutcomeBuilderEnum.value0,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-outcome',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Success',
    ),
  );

  /// value4
  static AuditEventOutcomeBuilder value4 = AuditEventOutcomeBuilder._(
    valueString: '4',
    valueEnum: AuditEventOutcomeBuilderEnum.value4,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-outcome',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Minor failure',
    ),
  );

  /// value8
  static AuditEventOutcomeBuilder value8 = AuditEventOutcomeBuilder._(
    valueString: '8',
    valueEnum: AuditEventOutcomeBuilderEnum.value8,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-outcome',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Serious failure',
    ),
  );

  /// value12
  static AuditEventOutcomeBuilder value12 = AuditEventOutcomeBuilder._(
    valueString: '12',
    valueEnum: AuditEventOutcomeBuilderEnum.value12,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-outcome',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Major failure',
    ),
  );

  /// For instances where an Element is present but not value
  static AuditEventOutcomeBuilder elementOnly = AuditEventOutcomeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<AuditEventOutcomeBuilder> values = [
    value0,
    value4,
    value8,
    value12,
  ];

  /// Returns the enum value with an element attached
  AuditEventOutcomeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return AuditEventOutcomeBuilder._(
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
