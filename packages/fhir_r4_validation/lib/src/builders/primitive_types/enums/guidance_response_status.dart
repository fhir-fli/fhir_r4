// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for GuidanceResponseStatus
enum GuidanceResponseStatusBuilderEnum {
  /// success
  success,

  /// data-requested
  dataRequested,

  /// data-required
  dataRequired,

  /// in-progress
  inProgress,

  /// failure
  failure,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case GuidanceResponseStatusBuilderEnum.success:
        return 'success';
      case GuidanceResponseStatusBuilderEnum.dataRequested:
        return 'data-requested';
      case GuidanceResponseStatusBuilderEnum.dataRequired:
        return 'data-required';
      case GuidanceResponseStatusBuilderEnum.inProgress:
        return 'in-progress';
      case GuidanceResponseStatusBuilderEnum.failure:
        return 'failure';
      case GuidanceResponseStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static GuidanceResponseStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return GuidanceResponseStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static GuidanceResponseStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'success':
        return GuidanceResponseStatusBuilderEnum.success;
      case 'data-requested':
        return GuidanceResponseStatusBuilderEnum.dataRequested;
      case 'data-required':
        return GuidanceResponseStatusBuilderEnum.dataRequired;
      case 'in-progress':
        return GuidanceResponseStatusBuilderEnum.inProgress;
      case 'failure':
        return GuidanceResponseStatusBuilderEnum.failure;
      case 'entered-in-error':
        return GuidanceResponseStatusBuilderEnum.enteredInError;
    }
    return null;
  }
}

/// The status of a guidance response.
class GuidanceResponseStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  GuidanceResponseStatusBuilder._({
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
  factory GuidanceResponseStatusBuilder(
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
    final valueEnum = GuidanceResponseStatusBuilderEnum.fromString(
      valueString,
    );
    return GuidanceResponseStatusBuilder._(
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

  /// Create empty [GuidanceResponseStatusBuilder]
  /// with element only
  factory GuidanceResponseStatusBuilder.empty() =>
      GuidanceResponseStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [GuidanceResponseStatusBuilder] from JSON.
  factory GuidanceResponseStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GuidanceResponseStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GuidanceResponseStatusBuilder cannot be constructed from JSON.',
      );
    }
    return GuidanceResponseStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for GuidanceResponseStatusBuilder
  final GuidanceResponseStatusBuilderEnum? valueEnum;

  /// success
  static GuidanceResponseStatusBuilder success =
      GuidanceResponseStatusBuilder._(
    valueString: 'success',
    valueEnum: GuidanceResponseStatusBuilderEnum.success,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/guidance-response-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Success',
    ),
  );

  /// data_requested
  static GuidanceResponseStatusBuilder dataRequested =
      GuidanceResponseStatusBuilder._(
    valueString: 'data-requested',
    valueEnum: GuidanceResponseStatusBuilderEnum.dataRequested,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/guidance-response-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Data Requested',
    ),
  );

  /// data_required
  static GuidanceResponseStatusBuilder dataRequired =
      GuidanceResponseStatusBuilder._(
    valueString: 'data-required',
    valueEnum: GuidanceResponseStatusBuilderEnum.dataRequired,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/guidance-response-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Data Required',
    ),
  );

  /// in_progress
  static GuidanceResponseStatusBuilder inProgress =
      GuidanceResponseStatusBuilder._(
    valueString: 'in-progress',
    valueEnum: GuidanceResponseStatusBuilderEnum.inProgress,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/guidance-response-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'In Progress',
    ),
  );

  /// failure
  static GuidanceResponseStatusBuilder failure =
      GuidanceResponseStatusBuilder._(
    valueString: 'failure',
    valueEnum: GuidanceResponseStatusBuilderEnum.failure,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/guidance-response-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Failure',
    ),
  );

  /// entered_in_error
  static GuidanceResponseStatusBuilder enteredInError =
      GuidanceResponseStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: GuidanceResponseStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/guidance-response-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered In Error',
    ),
  );

  /// For instances where an Element is present but not value
  static GuidanceResponseStatusBuilder elementOnly =
      GuidanceResponseStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<GuidanceResponseStatusBuilder> values = [
    success,
    dataRequested,
    dataRequired,
    inProgress,
    failure,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  GuidanceResponseStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return GuidanceResponseStatusBuilder._(
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
