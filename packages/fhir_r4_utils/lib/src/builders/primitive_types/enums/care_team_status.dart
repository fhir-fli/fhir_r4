// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for CareTeamStatus
enum CareTeamStatusBuilderEnum {
  /// proposed
  proposed,

  /// active
  active,

  /// suspended
  suspended,

  /// inactive
  inactive,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case CareTeamStatusBuilderEnum.proposed:
        return 'proposed';
      case CareTeamStatusBuilderEnum.active:
        return 'active';
      case CareTeamStatusBuilderEnum.suspended:
        return 'suspended';
      case CareTeamStatusBuilderEnum.inactive:
        return 'inactive';
      case CareTeamStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CareTeamStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return CareTeamStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CareTeamStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'proposed':
        return CareTeamStatusBuilderEnum.proposed;
      case 'active':
        return CareTeamStatusBuilderEnum.active;
      case 'suspended':
        return CareTeamStatusBuilderEnum.suspended;
      case 'inactive':
        return CareTeamStatusBuilderEnum.inactive;
      case 'entered-in-error':
        return CareTeamStatusBuilderEnum.enteredInError;
    }
    return null;
  }
}

/// Indicates the status of the care team.
class CareTeamStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CareTeamStatusBuilder._({
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
  factory CareTeamStatusBuilder(
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
    final valueEnum = CareTeamStatusBuilderEnum.fromString(
      valueString,
    );
    return CareTeamStatusBuilder._(
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

  /// Create empty [CareTeamStatusBuilder]
  /// with element only
  factory CareTeamStatusBuilder.empty() =>
      CareTeamStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [CareTeamStatusBuilder] from JSON.
  factory CareTeamStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CareTeamStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CareTeamStatusBuilder cannot be constructed from JSON.',
      );
    }
    return CareTeamStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for CareTeamStatusBuilder
  final CareTeamStatusBuilderEnum? valueEnum;

  /// proposed
  static CareTeamStatusBuilder proposed = CareTeamStatusBuilder._(
    valueString: 'proposed',
    valueEnum: CareTeamStatusBuilderEnum.proposed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-team-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Proposed',
    ),
  );

  /// active
  static CareTeamStatusBuilder active = CareTeamStatusBuilder._(
    valueString: 'active',
    valueEnum: CareTeamStatusBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-team-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// suspended
  static CareTeamStatusBuilder suspended = CareTeamStatusBuilder._(
    valueString: 'suspended',
    valueEnum: CareTeamStatusBuilderEnum.suspended,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-team-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Suspended',
    ),
  );

  /// inactive
  static CareTeamStatusBuilder inactive = CareTeamStatusBuilder._(
    valueString: 'inactive',
    valueEnum: CareTeamStatusBuilderEnum.inactive,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-team-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Inactive',
    ),
  );

  /// entered_in_error
  static CareTeamStatusBuilder enteredInError = CareTeamStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: CareTeamStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-team-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// For instances where an Element is present but not value
  static CareTeamStatusBuilder elementOnly = CareTeamStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<CareTeamStatusBuilder> values = [
    proposed,
    active,
    suspended,
    inactive,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  CareTeamStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return CareTeamStatusBuilder._(
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
