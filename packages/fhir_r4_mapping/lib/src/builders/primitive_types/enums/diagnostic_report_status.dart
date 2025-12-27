part of '../primitive_types.dart';

/// Actual enum for DiagnosticReportStatus
enum DiagnosticReportStatusBuilderEnum {
  /// registered
  registered,

  /// partial
  partial,

  /// preliminary
  preliminary,

  /// final
  final_,

  /// amended
  amended,

  /// corrected
  corrected,

  /// appended
  appended,

  /// cancelled
  cancelled,

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
      case DiagnosticReportStatusBuilderEnum.registered:
        return 'registered';
      case DiagnosticReportStatusBuilderEnum.partial:
        return 'partial';
      case DiagnosticReportStatusBuilderEnum.preliminary:
        return 'preliminary';
      case DiagnosticReportStatusBuilderEnum.final_:
        return 'final';
      case DiagnosticReportStatusBuilderEnum.amended:
        return 'amended';
      case DiagnosticReportStatusBuilderEnum.corrected:
        return 'corrected';
      case DiagnosticReportStatusBuilderEnum.appended:
        return 'appended';
      case DiagnosticReportStatusBuilderEnum.cancelled:
        return 'cancelled';
      case DiagnosticReportStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
      case DiagnosticReportStatusBuilderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DiagnosticReportStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return DiagnosticReportStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DiagnosticReportStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'registered':
        return DiagnosticReportStatusBuilderEnum.registered;
      case 'partial':
        return DiagnosticReportStatusBuilderEnum.partial;
      case 'preliminary':
        return DiagnosticReportStatusBuilderEnum.preliminary;
      case 'final':
        return DiagnosticReportStatusBuilderEnum.final_;
      case 'amended':
        return DiagnosticReportStatusBuilderEnum.amended;
      case 'corrected':
        return DiagnosticReportStatusBuilderEnum.corrected;
      case 'appended':
        return DiagnosticReportStatusBuilderEnum.appended;
      case 'cancelled':
        return DiagnosticReportStatusBuilderEnum.cancelled;
      case 'entered-in-error':
        return DiagnosticReportStatusBuilderEnum.enteredInError;
      case 'unknown':
        return DiagnosticReportStatusBuilderEnum.unknown;
    }
    return null;
  }
}

/// The status of the diagnostic report.
class DiagnosticReportStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DiagnosticReportStatusBuilder._({
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
  factory DiagnosticReportStatusBuilder(
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
    final valueEnum = DiagnosticReportStatusBuilderEnum.fromString(
      valueString,
    );
    return DiagnosticReportStatusBuilder._(
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

  /// Create empty [DiagnosticReportStatusBuilder]
  /// with element only
  factory DiagnosticReportStatusBuilder.empty() =>
      DiagnosticReportStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [DiagnosticReportStatusBuilder] from JSON.
  factory DiagnosticReportStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DiagnosticReportStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DiagnosticReportStatusBuilder cannot be constructed from JSON.',
      );
    }
    return DiagnosticReportStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for DiagnosticReportStatusBuilder
  final DiagnosticReportStatusBuilderEnum? valueEnum;

  /// registered
  static DiagnosticReportStatusBuilder registered =
      DiagnosticReportStatusBuilder._(
    valueString: 'registered',
    valueEnum: DiagnosticReportStatusBuilderEnum.registered,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Registered',
    ),
  );

  /// partial
  static DiagnosticReportStatusBuilder partial =
      DiagnosticReportStatusBuilder._(
    valueString: 'partial',
    valueEnum: DiagnosticReportStatusBuilderEnum.partial,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Partial',
    ),
  );

  /// preliminary
  static DiagnosticReportStatusBuilder preliminary =
      DiagnosticReportStatusBuilder._(
    valueString: 'preliminary',
    valueEnum: DiagnosticReportStatusBuilderEnum.preliminary,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Preliminary',
    ),
  );

  /// final_
  static DiagnosticReportStatusBuilder final_ = DiagnosticReportStatusBuilder._(
    valueString: 'final',
    valueEnum: DiagnosticReportStatusBuilderEnum.final_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Final',
    ),
  );

  /// amended
  static DiagnosticReportStatusBuilder amended =
      DiagnosticReportStatusBuilder._(
    valueString: 'amended',
    valueEnum: DiagnosticReportStatusBuilderEnum.amended,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Amended',
    ),
  );

  /// corrected
  static DiagnosticReportStatusBuilder corrected =
      DiagnosticReportStatusBuilder._(
    valueString: 'corrected',
    valueEnum: DiagnosticReportStatusBuilderEnum.corrected,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Corrected',
    ),
  );

  /// appended
  static DiagnosticReportStatusBuilder appended =
      DiagnosticReportStatusBuilder._(
    valueString: 'appended',
    valueEnum: DiagnosticReportStatusBuilderEnum.appended,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Appended',
    ),
  );

  /// cancelled
  static DiagnosticReportStatusBuilder cancelled =
      DiagnosticReportStatusBuilder._(
    valueString: 'cancelled',
    valueEnum: DiagnosticReportStatusBuilderEnum.cancelled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Cancelled',
    ),
  );

  /// entered_in_error
  static DiagnosticReportStatusBuilder enteredInError =
      DiagnosticReportStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: DiagnosticReportStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static DiagnosticReportStatusBuilder unknown =
      DiagnosticReportStatusBuilder._(
    valueString: 'unknown',
    valueEnum: DiagnosticReportStatusBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// For instances where an Element is present but not value
  static DiagnosticReportStatusBuilder elementOnly =
      DiagnosticReportStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<DiagnosticReportStatusBuilder> values = [
    registered,
    partial,
    preliminary,
    final_,
    amended,
    corrected,
    appended,
    cancelled,
    enteredInError,
    unknown,
  ];

  /// Returns the enum value with an element attached
  DiagnosticReportStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return DiagnosticReportStatusBuilder._(
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
