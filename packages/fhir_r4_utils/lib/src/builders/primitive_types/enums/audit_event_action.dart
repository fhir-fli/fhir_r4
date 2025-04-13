// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AuditEventAction
enum AuditEventActionBuilderEnum {
  /// C
  c,

  /// R
  r,

  /// U
  u,

  /// D
  d,

  /// E
  e,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AuditEventActionBuilderEnum.c:
        return 'C';
      case AuditEventActionBuilderEnum.r:
        return 'R';
      case AuditEventActionBuilderEnum.u:
        return 'U';
      case AuditEventActionBuilderEnum.d:
        return 'D';
      case AuditEventActionBuilderEnum.e:
        return 'E';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AuditEventActionBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return AuditEventActionBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AuditEventActionBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'C':
        return AuditEventActionBuilderEnum.c;
      case 'R':
        return AuditEventActionBuilderEnum.r;
      case 'U':
        return AuditEventActionBuilderEnum.u;
      case 'D':
        return AuditEventActionBuilderEnum.d;
      case 'E':
        return AuditEventActionBuilderEnum.e;
    }
    return null;
  }
}

/// Indicator for type of action performed during the event that generated
/// the event.
class AuditEventActionBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AuditEventActionBuilder._({
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
  factory AuditEventActionBuilder(
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
    final valueEnum = AuditEventActionBuilderEnum.fromString(
      valueString,
    );
    return AuditEventActionBuilder._(
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

  /// Create empty [AuditEventActionBuilder]
  /// with element only
  factory AuditEventActionBuilder.empty() =>
      AuditEventActionBuilder._(valueString: null);

  /// Factory constructor to create
  /// [AuditEventActionBuilder] from JSON.
  factory AuditEventActionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventActionBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AuditEventActionBuilder cannot be constructed from JSON.',
      );
    }
    return AuditEventActionBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for AuditEventActionBuilder
  final AuditEventActionBuilderEnum? valueEnum;

  /// C
  static AuditEventActionBuilder c = AuditEventActionBuilder._(
    valueString: 'C',
    valueEnum: AuditEventActionBuilderEnum.c,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-action',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Create',
    ),
  );

  /// R
  static AuditEventActionBuilder r = AuditEventActionBuilder._(
    valueString: 'R',
    valueEnum: AuditEventActionBuilderEnum.r,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-action',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Read/View/Print',
    ),
  );

  /// U
  static AuditEventActionBuilder u = AuditEventActionBuilder._(
    valueString: 'U',
    valueEnum: AuditEventActionBuilderEnum.u,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-action',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Update',
    ),
  );

  /// D
  static AuditEventActionBuilder d = AuditEventActionBuilder._(
    valueString: 'D',
    valueEnum: AuditEventActionBuilderEnum.d,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-action',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Delete',
    ),
  );

  /// E
  static AuditEventActionBuilder e = AuditEventActionBuilder._(
    valueString: 'E',
    valueEnum: AuditEventActionBuilderEnum.e,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-action',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Execute',
    ),
  );

  /// For instances where an Element is present but not value
  static AuditEventActionBuilder elementOnly = AuditEventActionBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<AuditEventActionBuilder> values = [
    c,
    r,
    u,
    d,
    e,
  ];

  /// Returns the enum value with an element attached
  AuditEventActionBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return AuditEventActionBuilder._(
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
