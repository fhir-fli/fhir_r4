// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SupplyRequestStatus
enum SupplyRequestStatusBuilderEnum {
  /// draft
  draft,

  /// active
  active,

  /// suspended
  suspended,

  /// cancelled
  cancelled,

  /// completed
  completed,

  /// entered-in-error
  enteredInError,

  /// unknown
  unknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SupplyRequestStatusBuilderEnum.draft:
        return 'draft';
      case SupplyRequestStatusBuilderEnum.active:
        return 'active';
      case SupplyRequestStatusBuilderEnum.suspended:
        return 'suspended';
      case SupplyRequestStatusBuilderEnum.cancelled:
        return 'cancelled';
      case SupplyRequestStatusBuilderEnum.completed:
        return 'completed';
      case SupplyRequestStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
      case SupplyRequestStatusBuilderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SupplyRequestStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return SupplyRequestStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SupplyRequestStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'draft':
        return SupplyRequestStatusBuilderEnum.draft;
      case 'active':
        return SupplyRequestStatusBuilderEnum.active;
      case 'suspended':
        return SupplyRequestStatusBuilderEnum.suspended;
      case 'cancelled':
        return SupplyRequestStatusBuilderEnum.cancelled;
      case 'completed':
        return SupplyRequestStatusBuilderEnum.completed;
      case 'entered-in-error':
        return SupplyRequestStatusBuilderEnum.enteredInError;
      case 'unknown':
        return SupplyRequestStatusBuilderEnum.unknown;
    }
    return null;
  }
}

/// Status of the supply request.
class SupplyRequestStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SupplyRequestStatusBuilder._({
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
  factory SupplyRequestStatusBuilder(
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
    final valueEnum = SupplyRequestStatusBuilderEnum.fromString(
      valueString,
    );
    return SupplyRequestStatusBuilder._(
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

  /// Create empty [SupplyRequestStatusBuilder]
  /// with element only
  factory SupplyRequestStatusBuilder.empty() =>
      SupplyRequestStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [SupplyRequestStatusBuilder] from JSON.
  factory SupplyRequestStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyRequestStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SupplyRequestStatusBuilder cannot be constructed from JSON.',
      );
    }
    return SupplyRequestStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for SupplyRequestStatusBuilder
  final SupplyRequestStatusBuilderEnum? valueEnum;

  /// draft
  static SupplyRequestStatusBuilder draft = SupplyRequestStatusBuilder._(
    valueString: 'draft',
    valueEnum: SupplyRequestStatusBuilderEnum.draft,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/supplyrequest-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Draft',
    ),
  );

  /// active
  static SupplyRequestStatusBuilder active = SupplyRequestStatusBuilder._(
    valueString: 'active',
    valueEnum: SupplyRequestStatusBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/supplyrequest-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// suspended
  static SupplyRequestStatusBuilder suspended = SupplyRequestStatusBuilder._(
    valueString: 'suspended',
    valueEnum: SupplyRequestStatusBuilderEnum.suspended,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/supplyrequest-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Suspended',
    ),
  );

  /// cancelled
  static SupplyRequestStatusBuilder cancelled = SupplyRequestStatusBuilder._(
    valueString: 'cancelled',
    valueEnum: SupplyRequestStatusBuilderEnum.cancelled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/supplyrequest-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Cancelled',
    ),
  );

  /// completed
  static SupplyRequestStatusBuilder completed = SupplyRequestStatusBuilder._(
    valueString: 'completed',
    valueEnum: SupplyRequestStatusBuilderEnum.completed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/supplyrequest-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static SupplyRequestStatusBuilder enteredInError =
      SupplyRequestStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: SupplyRequestStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/supplyrequest-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static SupplyRequestStatusBuilder unknown = SupplyRequestStatusBuilder._(
    valueString: 'unknown',
    valueEnum: SupplyRequestStatusBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/supplyrequest-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// For instances where an Element is present but not value
  static SupplyRequestStatusBuilder elementOnly = SupplyRequestStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<SupplyRequestStatusBuilder> values = [
    draft,
    active,
    suspended,
    cancelled,
    completed,
    enteredInError,
    unknown,
  ];

  /// Returns the enum value with an element attached
  SupplyRequestStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return SupplyRequestStatusBuilder._(
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
